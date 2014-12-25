class Comment < ActiveRecord::Base
  has_one :added_item
end
