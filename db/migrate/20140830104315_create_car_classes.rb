class CreateCarClasses < ActiveRecord::Migration
  def change
    create_table :car_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
