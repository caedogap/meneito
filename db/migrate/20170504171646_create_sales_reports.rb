class CreateSalesReports < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_reports do |t|
      t.integer :entity_id
      t.string :comment
      t.integer :traffic

      t.timestamps
    end
  end
end
