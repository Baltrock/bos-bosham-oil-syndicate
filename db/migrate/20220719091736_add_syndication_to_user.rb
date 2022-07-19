class AddSyndicationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :fuel_limit, :string
    add_column :users, :present_fuel_content, :string
    add_column :users, :fuel_needed, :string
    add_column :users, :comment, :string
  end
end
