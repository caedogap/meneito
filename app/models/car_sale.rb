class CarSale < ApplicationRecord
  belongs_to :car_model
  belongs_to :sales_report
end
