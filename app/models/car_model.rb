class CarModel < ApplicationRecord
  has_and_belongs_to_many :car_sales
end
