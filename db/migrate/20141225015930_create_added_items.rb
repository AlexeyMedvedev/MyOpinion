class CreateAddedItems < ActiveRecord::Migration
  def change
    create_table :added_items do |t|
      t.references :entertainment, polymorphic: true, index: true
      t.belongs_to :user, index:true
      t.belongs_to :comment, index: true
    end
  end
end
