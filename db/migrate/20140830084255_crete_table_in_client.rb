class CreteTableInClient < ActiveRecord::Migration
  def change
  	 change_table :clients do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :doc_type
      t.string :doc_number 
  
    end
  end
end
