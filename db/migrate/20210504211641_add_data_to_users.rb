class AddDataToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_index :users, :name
    add_column :users, :lastname, :string
  end
end
