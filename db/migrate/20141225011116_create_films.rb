class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.text :directed
      t.text :janra
      t.string :length

      t.timestamps
    end
  end
end
