require "application_system_test_case"

class ChocolatesTest < ApplicationSystemTestCase
  setup do
    @chocolate = chocolates(:one)
  end

  test "visiting the index" do
    visit chocolates_url
    assert_selector "h1", text: "Chocolates"
  end

  test "creating a Chocolate" do
    visit chocolates_url
    click_on "New Chocolate"

    fill_in "Apellido", with: @chocolate.apellido
    fill_in "Edad", with: @chocolate.edad
    fill_in "Email", with: @chocolate.email
    fill_in "Name", with: @chocolate.name
    click_on "Create Chocolate"

    assert_text "Chocolate was successfully created"
    click_on "Back"
  end

  test "updating a Chocolate" do
    visit chocolates_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @chocolate.apellido
    fill_in "Edad", with: @chocolate.edad
    fill_in "Email", with: @chocolate.email
    fill_in "Name", with: @chocolate.name
    click_on "Update Chocolate"

    assert_text "Chocolate was successfully updated"
    click_on "Back"
  end

  test "destroying a Chocolate" do
    visit chocolates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chocolate was successfully destroyed"
  end
end
