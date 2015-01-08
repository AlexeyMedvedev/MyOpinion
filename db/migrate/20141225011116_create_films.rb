class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name, null:false
      t.text :directed
      t.text :janra
      t.string :length
    end
  end
end
