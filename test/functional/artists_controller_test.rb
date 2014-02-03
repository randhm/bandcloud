require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { band_image: @artist.band_image, band_name: @artist.band_name, biography: @artist.biography, comment_id: @artist.comment_id, email: @artist.email, password_digest: @artist.password_digest, role: @artist.role, song_id: @artist.song_id }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    put :update, id: @artist, artist: { band_image: @artist.band_image, band_name: @artist.band_name, biography: @artist.biography, comment_id: @artist.comment_id, email: @artist.email, password_digest: @artist.password_digest, role: @artist.role, song_id: @artist.song_id }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
