class AddActiveToReturns < ActiveRecord::Migration
  def change
    add_column :rents, :active, :boolean
   
  end
end
