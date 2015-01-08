class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null:false
      t.text :adress
      t.string :phone
    end
  end
end
