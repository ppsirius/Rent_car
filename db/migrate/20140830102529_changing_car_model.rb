class ChangingCarModel < ActiveRecord::Migration
  def change
    change_table :cars do |t|

      t.string :production_year
      t.string :state
      t.string :car_paint
      t.string :plate
      t.integer :type_id

  end
end
end
