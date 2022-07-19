class AddUrlToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :user_url, :string
  end
end
