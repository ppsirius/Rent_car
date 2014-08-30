class ChangeTypeModel < ActiveRecord::Migration
  def change
    change_table :types do |t|

      t.integer :brand_id
      t.integer :car_class_id

  end
end
end
