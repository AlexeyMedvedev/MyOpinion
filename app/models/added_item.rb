class AddedItem < ActiveRecord::Base
  belongs_to :entertainment, polymorphic: true
end
