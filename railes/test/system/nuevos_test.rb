require "application_system_test_case"

class NuevosTest < ApplicationSystemTestCase
  setup do
    @nuevo = nuevos(:one)
  end

  test "visiting the index" do
    visit nuevos_url
    assert_selector "h1", text: "Nuevos"
  end

  test "creating a Nuevo" do
    visit nuevos_url
    click_on "New Nuevo"

    fill_in "Apellido", with: @nuevo.apellido
    fill_in "Edad", with: @nuevo.edad
    fill_in "Email", with: @nuevo.email
    fill_in "Name", with: @nuevo.name
    click_on "Create Nuevo"

    assert_text "Nuevo was successfully created"
    click_on "Back"
  end

  test "updating a Nuevo" do
    visit nuevos_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @nuevo.apellido
    fill_in "Edad", with: @nuevo.edad
    fill_in "Email", with: @nuevo.email
    fill_in "Name", with: @nuevo.name
    click_on "Update Nuevo"

    assert_text "Nuevo was successfully updated"
    click_on "Back"
  end

  test "destroying a Nuevo" do
    visit nuevos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nuevo was successfully destroyed"
  end
end
