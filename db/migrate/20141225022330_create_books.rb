class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :author
      t.string :janra

      t.timestamps
    end
  end
end
