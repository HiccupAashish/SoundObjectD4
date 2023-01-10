require "application_system_test_case"

class SoundobjectsTest < ApplicationSystemTestCase
  setup do
    @soundobject = soundobjects(:one)
  end

  test "visiting the index" do
    visit soundobjects_url
    assert_selector "h1", text: "Soundobjects"
  end

  test "creating a Soundobject" do
    visit soundobjects_url
    click_on "New Soundobject"

    fill_in "Name", with: @soundobject.Name
    fill_in "Color", with: @soundobject.color
    fill_in "Description", with: @soundobject.description
    fill_in "Image", with: @soundobject.image
    click_on "Create Soundobject"

    assert_text "Soundobject was successfully created"
    click_on "Back"
  end

  test "updating a Soundobject" do
    visit soundobjects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @soundobject.Name
    fill_in "Color", with: @soundobject.color
    fill_in "Description", with: @soundobject.description
    fill_in "Image", with: @soundobject.image
    click_on "Update Soundobject"

    assert_text "Soundobject was successfully updated"
    click_on "Back"
  end

  test "destroying a Soundobject" do
    visit soundobjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soundobject was successfully destroyed"
  end
end
