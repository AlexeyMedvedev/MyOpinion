require 'rails_helper'

describe AddedItem, :type => :model do
  it {should belong_to(:entertainment)}
end