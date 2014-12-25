class Event < ActiveRecord::Base
  has_many :added_items, as: :entertainment
end
