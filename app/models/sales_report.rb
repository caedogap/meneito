class SalesReport < ApplicationRecord
  has_many :car_sales, dependent: :destroy
end
