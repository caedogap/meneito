class SalesReport < ApplicationRecord
  has_many :car_sales, dependent: :destroy
  accepts_nested_attributes_for :car_sales

  #def car_sales_attributes=(attributes)
  #end

end
