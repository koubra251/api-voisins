require "application_system_test_case"

class VoisinsTest < ApplicationSystemTestCase
  setup do
    @voisin = voisins(:one)
  end

  test "visiting the index" do
    visit voisins_url
    assert_selector "h1", text: "Voisins"
  end

  test "creating a Voisin" do
    visit voisins_url
    click_on "New Voisin"

    fill_in "Aboutme", with: @voisin.aboutme
    fill_in "Address", with: @voisin.address
    fill_in "Name", with: @voisin.name
    fill_in "Number", with: @voisin.number
    click_on "Create Voisin"

    assert_text "Voisin was successfully created"
    click_on "Back"
  end

  test "updating a Voisin" do
    visit voisins_url
    click_on "Edit", match: :first

    fill_in "Aboutme", with: @voisin.aboutme
    fill_in "Address", with: @voisin.address
    fill_in "Name", with: @voisin.name
    fill_in "Number", with: @voisin.number
    click_on "Update Voisin"

    assert_text "Voisin was successfully updated"
    click_on "Back"
  end

  test "destroying a Voisin" do
    visit voisins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voisin was successfully destroyed"
  end
end
