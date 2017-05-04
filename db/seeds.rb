# Car models

car_codes = ['Sentra', 'Titan', 'Tida', '350Z', 'Frontier']
car_models = car_codes.map{ |code| CarModel.create(code: code) }

# Sale Report

report = SalesReport.new(entity_id: 10, comment: 'This is a sales report.', traffic: 110)
report.save

# Car Sales

car_sales = car_models.map { |car_model| CarSale.create(amount: 100, car_model: car_model, sales_report_id: report.id) }
