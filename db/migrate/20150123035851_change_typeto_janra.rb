class ChangeTypetoJanra < ActiveRecord::Migration
  def change
    rename_column :events, :type, :janra
  end
end
