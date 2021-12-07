require "application_system_test_case"

class MusicsTest < ApplicationSystemTestCase
  setup do
    @music = musics(:one)
  end

  test "visiting the index" do
    visit musics_url
    assert_selector "h1", text: "Musics"
  end

  test "creating a Musics" do
    visit musics_url
    click_on "New Musics"

    check "Ms fav" if @music.ms_fav
    fill_in "Ms", with: @music.ms_id
    fill_in "Ms name", with: @music.ms_name
    fill_in "Ms year", with: @music.ms_year
    click_on "Create Musics"

    assert_text "Musics was successfully created"
    click_on "Back"
  end

  test "updating a Musics" do
    visit musics_url
    click_on "Edit", match: :first

    check "Ms fav" if @music.ms_fav
    fill_in "Ms", with: @music.ms_id
    fill_in "Ms name", with: @music.ms_name
    fill_in "Ms year", with: @music.ms_year
    click_on "Update Musics"

    assert_text "Musics was successfully updated"
    click_on "Back"
  end

  test "destroying a Musics" do
    visit musics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musics was successfully destroyed"
  end
end
