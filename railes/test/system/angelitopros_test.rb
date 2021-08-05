require "application_system_test_case"

class AngelitoprosTest < ApplicationSystemTestCase
  setup do
    @angelitopro = angelitopros(:one)
  end

  test "visiting the index" do
    visit angelitopros_url
    assert_selector "h1", text: "Angelitopros"
  end

  test "creating a Angelitopro" do
    visit angelitopros_url
    click_on "New Angelitopro"

    fill_in "Apellido", with: @angelitopro.apellido
    fill_in "Edad", with: @angelitopro.edad
    fill_in "Email", with: @angelitopro.email
    fill_in "Name", with: @angelitopro.name
    click_on "Create Angelitopro"

    assert_text "Angelitopro was successfully created"
    click_on "Back"
  end

  test "updating a Angelitopro" do
    visit angelitopros_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @angelitopro.apellido
    fill_in "Edad", with: @angelitopro.edad
    fill_in "Email", with: @angelitopro.email
    fill_in "Name", with: @angelitopro.name
    click_on "Update Angelitopro"

    assert_text "Angelitopro was successfully updated"
    click_on "Back"
  end

  test "destroying a Angelitopro" do
    visit angelitopros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Angelitopro was successfully destroyed"
  end
end
