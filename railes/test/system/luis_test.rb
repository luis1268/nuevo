require "application_system_test_case"

class LuisTest < ApplicationSystemTestCase
  setup do
    @lui = luis(:one)
  end

  test "visiting the index" do
    visit luis_url
    assert_selector "h1", text: "Luis"
  end

  test "creating a Lui" do
    visit luis_url
    click_on "New Lui"

    fill_in "Apellido", with: @lui.apellido
    fill_in "Contrasena", with: @lui.contrasena
    fill_in "Edad", with: @lui.edad
    fill_in "Email", with: @lui.email
    fill_in "Name", with: @lui.name
    click_on "Create Lui"

    assert_text "Lui was successfully created"
    click_on "Back"
  end

  test "updating a Lui" do
    visit luis_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @lui.apellido
    fill_in "Contrasena", with: @lui.contrasena
    fill_in "Edad", with: @lui.edad
    fill_in "Email", with: @lui.email
    fill_in "Name", with: @lui.name
    click_on "Update Lui"

    assert_text "Lui was successfully updated"
    click_on "Back"
  end

  test "destroying a Lui" do
    visit luis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lui was successfully destroyed"
  end
end
