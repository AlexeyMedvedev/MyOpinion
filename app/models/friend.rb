class Friend < ActiveRecord::Base
	belongs_to :user
	belong_to :friend, class_name: "User", foreign_key: "friend_id", dependent: :destroy
end
