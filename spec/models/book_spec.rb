require 'rails_helper'

RSpec.describe Book, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:book)).to be_valid
  end

  describe Game, :type => :model do
    it {should have_many(:added_items)}
  end
end