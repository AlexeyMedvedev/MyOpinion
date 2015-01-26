class PhoneToInt < ActiveRecord::Migration
  def change
    change_column :events, :phone, 'integer USING CAST(phone AS integer)'
    change_column :foods, :phone, 'integer USING CAST(phone AS integer)'
  end
end
