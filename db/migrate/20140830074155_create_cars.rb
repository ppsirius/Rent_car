class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|

      t.timestamps
    end
  end
end
