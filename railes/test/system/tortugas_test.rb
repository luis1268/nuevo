require "application_system_test_case"

class TortugasTest < ApplicationSystemTestCase
  setup do
    @tortuga = tortugas(:one)
  end

  test "visiting the index" do
    visit tortugas_url
    assert_selector "h1", text: "Tortugas"
  end

  test "creating a Tortuga" do
    visit tortugas_url
    click_on "New Tortuga"

    fill_in "Apellido", with: @tortuga.apellido
    fill_in "Edad", with: @tortuga.edad
    fill_in "Email", with: @tortuga.email
    fill_in "Name", with: @tortuga.name
    click_on "Create Tortuga"

    assert_text "Tortuga was successfully created"
    click_on "Back"
  end

  test "updating a Tortuga" do
    visit tortugas_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @tortuga.apellido
    fill_in "Edad", with: @tortuga.edad
    fill_in "Email", with: @tortuga.email
    fill_in "Name", with: @tortuga.name
    click_on "Update Tortuga"

    assert_text "Tortuga was successfully updated"
    click_on "Back"
  end

  test "destroying a Tortuga" do
    visit tortugas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tortuga was successfully destroyed"
  end
end
