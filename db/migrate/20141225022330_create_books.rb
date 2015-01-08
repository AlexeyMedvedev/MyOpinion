class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, null:false
      t.text :author
      t.string :janra
    end
  end
end
