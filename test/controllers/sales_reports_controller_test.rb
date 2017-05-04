require 'test_helper'

class SalesReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_report = sales_reports(:one)
  end

  test "should get index" do
    get sales_reports_url, as: :json
    assert_response :success
  end

  test "should create sales_report" do
    assert_difference('SalesReport.count') do
      post sales_reports_url, params: { sales_report: { comment: @sales_report.comment, entity_id: @sales_report.entity_id, traffic: @sales_report.traffic } }, as: :json
    end

    assert_response 201
  end

  test "should show sales_report" do
    get sales_report_url(@sales_report), as: :json
    assert_response :success
  end

  test "should update sales_report" do
    patch sales_report_url(@sales_report), params: { sales_report: { comment: @sales_report.comment, entity_id: @sales_report.entity_id, traffic: @sales_report.traffic } }, as: :json
    assert_response 200
  end

  test "should destroy sales_report" do
    assert_difference('SalesReport.count', -1) do
      delete sales_report_url(@sales_report), as: :json
    end

    assert_response 204
  end
end
