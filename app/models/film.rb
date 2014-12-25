class Film < ActiveRecord::Base
  has_many :added_items, as: :entertainment
end
