require "application_system_test_case"

class TanquesTest < ApplicationSystemTestCase
  setup do
    @tanque = tanques(:one)
  end

  test "visiting the index" do
    visit tanques_url
    assert_selector "h1", text: "Tanques"
  end

  test "creating a Tanque" do
    visit tanques_url
    click_on "New Tanque"

    fill_in "Caracteristicas", with: @tanque.caracteristicas
    fill_in "Nombre", with: @tanque.nombre
    click_on "Create Tanque"

    assert_text "Tanque was successfully created"
    click_on "Back"
  end

  test "updating a Tanque" do
    visit tanques_url
    click_on "Edit", match: :first

    fill_in "Caracteristicas", with: @tanque.caracteristicas
    fill_in "Nombre", with: @tanque.nombre
    click_on "Update Tanque"

    assert_text "Tanque was successfully updated"
    click_on "Back"
  end

  test "destroying a Tanque" do
    visit tanques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tanque was successfully destroyed"
  end
end
