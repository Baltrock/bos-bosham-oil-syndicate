class CreateIsAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :is_admins do |t|
      t.string :name

      t.timestamps
    end
  end
end
