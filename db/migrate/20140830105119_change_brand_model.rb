class ChangeBrandModel < ActiveRecord::Migration
  def change
    change_table :brands do |t|

      t.string :origin

  end
end
end
