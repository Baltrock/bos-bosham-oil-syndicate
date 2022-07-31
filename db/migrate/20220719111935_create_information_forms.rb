class CreateInformationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :information_forms do |t|
      t.string :name
      t.string :fuel_capacity
      t.string :current_fuel_content
      t.string :fuel_needed
      t.string :instructions_for_delivery
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
