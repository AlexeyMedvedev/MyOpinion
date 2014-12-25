class Game < ActiveRecord::Base
  has_many :added_items, as: :entertainment
end
