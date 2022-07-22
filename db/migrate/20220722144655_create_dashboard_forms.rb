class CreateDashboardForms < ActiveRecord::Migration[7.0]
  def change
    create_table :dashboard_forms do |t|
      t.string :company_name
      t.string :address
      t.integer :pounds_per_litre
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
