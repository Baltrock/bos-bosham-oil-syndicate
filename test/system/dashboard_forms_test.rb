require "application_system_test_case"

class DashboardFormsTest < ApplicationSystemTestCase
  setup do
    @dashboard_form = dashboard_forms(:one)
  end

  test "visiting the index" do
    visit dashboard_forms_url
    assert_selector "h1", text: "Dashboard forms"
  end

  test "should create dashboard form" do
    visit dashboard_forms_url
    click_on "New dashboard form"

    fill_in "Address", with: @dashboard_form.address
    fill_in "Comment", with: @dashboard_form.comment
    fill_in "Company name", with: @dashboard_form.company_name
    fill_in "Pounds per litre", with: @dashboard_form.pounds_per_litre
    fill_in "Rating", with: @dashboard_form.rating
    click_on "Create Dashboard form"

    assert_text "Dashboard form was successfully created"
    click_on "Back"
  end

  test "should update Dashboard form" do
    visit dashboard_form_url(@dashboard_form)
    click_on "Edit this dashboard form", match: :first

    fill_in "Address", with: @dashboard_form.address
    fill_in "Comment", with: @dashboard_form.comment
    fill_in "Company name", with: @dashboard_form.company_name
    fill_in "Pounds per litre", with: @dashboard_form.pounds_per_litre
    fill_in "Rating", with: @dashboard_form.rating
    click_on "Update Dashboard form"

    assert_text "Dashboard form was successfully updated"
    click_on "Back"
  end

  test "should destroy Dashboard form" do
    visit dashboard_form_url(@dashboard_form)
    click_on "Destroy this dashboard form", match: :first

    assert_text "Dashboard form was successfully destroyed"
  end
end
