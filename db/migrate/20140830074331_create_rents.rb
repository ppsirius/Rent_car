class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|

      t.timestamps
    end
  end
end
