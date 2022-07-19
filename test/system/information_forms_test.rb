require "application_system_test_case"

class InformationFormsTest < ApplicationSystemTestCase
  setup do
    @information_form = information_forms(:one)
  end

  test "visiting the index" do
    visit information_forms_url
    assert_selector "h1", text: "Information forms"
  end

  test "should create information form" do
    visit information_forms_url
    click_on "New information form"

    fill_in "Comment", with: @information_form.comment
    fill_in "Current fuel content", with: @information_form.current_fuel_content
    fill_in "Fuel capacity", with: @information_form.fuel_capacity
    fill_in "Fuel needed", with: @information_form.fuel_needed
    fill_in "Name", with: @information_form.name
    fill_in "User", with: @information_form.user_id
    click_on "Create Information form"

    assert_text "Information form was successfully created"
    click_on "Back"
  end

  test "should update Information form" do
    visit information_form_url(@information_form)
    click_on "Edit this information form", match: :first

    fill_in "Comment", with: @information_form.comment
    fill_in "Current fuel content", with: @information_form.current_fuel_content
    fill_in "Fuel capacity", with: @information_form.fuel_capacity
    fill_in "Fuel needed", with: @information_form.fuel_needed
    fill_in "Name", with: @information_form.name
    fill_in "User", with: @information_form.user_id
    click_on "Update Information form"

    assert_text "Information form was successfully updated"
    click_on "Back"
  end

  test "should destroy Information form" do
    visit information_form_url(@information_form)
    click_on "Destroy this information form", match: :first

    assert_text "Information form was successfully destroyed"
  end
end
