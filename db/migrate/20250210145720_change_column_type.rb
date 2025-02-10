class ChangeColumnType < ActiveRecord::Migration[7.2]
  def change
    change_column :restaurant, :phone_number, :string
  end
end
