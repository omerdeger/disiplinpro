class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :item_number
      t.text :law
      
      t.timestamps
    end
  end
end
