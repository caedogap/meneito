require 'test_helper'

class CarSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_sale = car_sales(:one)
  end

  test "should get index" do
    get car_sales_url, as: :json
    assert_response :success
  end

  test "should create car_sale" do
    assert_difference('CarSale.count') do
      post car_sales_url, params: { car_sale: { amount: @car_sale.amount, car_model_id: @car_sale.car_model_id, sale_report_id: @car_sale.sale_report_id } }, as: :json
    end

    assert_response 201
  end

  test "should show car_sale" do
    get car_sale_url(@car_sale), as: :json
    assert_response :success
  end

  test "should update car_sale" do
    patch car_sale_url(@car_sale), params: { car_sale: { amount: @car_sale.amount, car_model_id: @car_sale.car_model_id, sale_report_id: @car_sale.sale_report_id } }, as: :json
    assert_response 200
  end

  test "should destroy car_sale" do
    assert_difference('CarSale.count', -1) do
      delete car_sale_url(@car_sale), as: :json
    end

    assert_response 204
  end
end
