class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :adress
      t.string :phone

      t.timestamps
    end
  end
end
