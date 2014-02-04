class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  before_filter :load_song
  def index
    @comment = @song.comments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end



  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = @song.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = @song.comments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = song.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @song = Song.find(params[:song_id])
    @comment = @song.comments.new(params[:comment])
    @comment.artist = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to (@song), notice: 'Comment was successfully created.' }
        format.json { render json: [@song, @comment], status: :created, location: [@song, @comment] }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = song.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to [@song, @comment], notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = @song.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to song_path(@song) }
      format.json { head :no_content }
    end
  end

  private

  def load_song
    @song = Song.find(params[:song_id])
  end
end
