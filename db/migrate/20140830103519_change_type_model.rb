class ChangeTypeModel < ActiveRecord::Migration
  def change
    change_table :types do |t|

      t.string :name
      t.integer :brand_id
      t.integer :class_id

  end
end
end
