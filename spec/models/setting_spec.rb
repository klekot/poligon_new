require 'rails_helper'

RSpec.describe Setting, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:setting)).to be_valid
  end
end
