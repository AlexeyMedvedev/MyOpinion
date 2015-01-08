class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name, null:false
      t.text :singer
      t.string :janra
    end
  end
end
