class AddFieldsToRents < ActiveRecord::Migration
  def change
  	change_table :rents do |t|
      t.integer :client_id
      t.integer :car_id
    end
  end
end
