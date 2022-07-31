require "test_helper"

class DashboardFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard_form = dashboard_forms(:one)
  end

  test "should get index" do
    get dashboard_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_form_url
    assert_response :success
  end

  test "should create dashboard_form" do
    assert_difference("DashboardForm.count") do
      post dashboard_forms_url, params: { dashboard_form: { address: @dashboard_form.address, comment: @dashboard_form.comment, company_name: @dashboard_form.company_name, pounds_per_litre: @dashboard_form.pounds_per_litre, rating: @dashboard_form.rating } }
    end

    assert_redirected_to dashboard_form_url(DashboardForm.last)
  end

  test "should show dashboard_form" do
    get dashboard_form_url(@dashboard_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_forms_url(@dashboard_form)
    assert_response :success
  end

  test "should update dashboard_form" do
    patch dashboard_forms_url(@dashboard_form), params: { dashboard_form: { address: @dashboard_form.address, comment: @dashboard_form.comment, company_name: @dashboard_form.company_name, pounds_per_litre: @dashboard_form.pounds_per_litre, rating: @dashboard_form.rating } }
    assert_redirected_to dashboard_forms_url(@dashboard_form)
  end

  test "should destroy dashboard_form" do
    assert_difference("DashboardForm.count", -1) do
      delete dashboard_forms_url(@dashboard_form)
    end

    assert_redirected_to dashboard_forms_url
  end
end
