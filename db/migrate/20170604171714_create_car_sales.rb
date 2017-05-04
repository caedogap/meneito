class CreateCarSales < ActiveRecord::Migration[5.2]
  def change
    create_table :car_sales do |t|
      t.float :amount
      t.references :car_model, foreign_key: true
      t.integer :sales_report_id

      t.timestamps
    end
  end
end
