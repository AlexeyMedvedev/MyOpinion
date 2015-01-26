require 'rails_helper'

RSpec.describe Event, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:event)).to be_valid
  end

  describe Event, :type => :model do
    it {should have_many(:added_items)}
  end
end
