require 'test_helper'

class MusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @music = musics(:one)
  end

  test "should get index" do
    get musics_index_url
    assert_response :success
  end

  test "should get new" do
    get new_music_url
    assert_response :success
  end

  test "should create music" do
    assert_difference('Musics.count') do
      post musics_index_url, params: { music: { ms_fav: @music.ms_fav, ms_id: @music.ms_id, ms_name: @music.ms_name, ms_year: @music.ms_year } }
    end

    assert_redirected_to music_url(Musics.last)
  end

  test "should show music" do
    get music_url(@music)
    assert_response :success
  end

  test "should get edit" do
    get edit_music_url(@music)
    assert_response :success
  end

  test "should update music" do
    patch music_url(@music), params: { music: { ms_fav: @music.ms_fav, ms_id: @music.ms_id, ms_name: @music.ms_name, ms_year: @music.ms_year } }
    assert_redirected_to music_url(@music)
  end

  test "should destroy music" do
    assert_difference('Musics.count', -1) do
      delete music_url(@music)
    end

    assert_redirected_to musics_index_url
  end
end
