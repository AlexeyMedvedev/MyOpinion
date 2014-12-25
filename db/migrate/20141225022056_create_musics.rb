class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.text :singer
      t.string :janra

      t.timestamps
    end
  end
end
