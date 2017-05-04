class CarSalesController < ApplicationController
  before_action :set_car_sale, only: [:show, :update, :destroy]

  # GET /car_sales
  def index
    @car_sales = CarSale.all

    render json: @car_sales
  end

  # GET /car_sales/1
  def show
    render json: @car_sale
  end

  # POST /car_sales
  def create
    @car_sale = CarSale.new(car_sale_params)

    if @car_sale.save
      render json: @car_sale, status: :created, location: @car_sale
    else
      render json: @car_sale.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /car_sales/1
  def update
    if @car_sale.update(car_sale_params)
      render json: @car_sale
    else
      render json: @car_sale.errors, status: :unprocessable_entity
    end
  end

  # DELETE /car_sales/1
  def destroy
    @car_sale.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_sale
      @car_sale = CarSale.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_sale_params
      params.require(:car_sale).permit(:amount, :car_model_id, :sale_report_id)
    end
end
