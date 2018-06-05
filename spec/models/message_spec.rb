require 'rails_helper'

RSpec.describe Message, type: :message do
  it " test new message creation with valid attributes to be valid" do
    @user = create(:user)
    @message = build(:message, User_id: @user.id)
    expect(@message).to be_valid
  end

  it "test new message creation with nil user_id not to be valid" do
    @message = build(:message, User_id: nil)
    expect(@message).to_not be_valid
  end

  it "test new message creation with non existing user_id not to be valid" do
    @message = build(:message, User_id: 1000)
    expect(@message).to_not be_valid
  end
end
