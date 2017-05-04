class SalesReportsController < ApplicationController
  before_action :set_sales_report, only: [:show, :update, :destroy]

  # GET /sales_reports
  def index
    @sales_reports = SalesReport.all

    render json: @sales_reports
  end

  # GET /sales_reports/1
  def show
    render json: @sales_report
  end

  # POST /sales_reports
  def create
    @sales_report = SalesReport.new(sales_report_params)

    if @sales_report.save
      render json: @sales_report, status: :created, location: @sales_report
    else
      render json: @sales_report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sales_reports/1
  def update
    if @sales_report.update(sales_report_params)
      render json: @sales_report
    else
      render json: @sales_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sales_reports/1
  def destroy
    @sales_report.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_report
      @sales_report = SalesReport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sales_report_params
      params.require(:sales_report).permit(:entity_id, :comment, :traffic)
    end
end
