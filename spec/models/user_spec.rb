require 'rails_helper'

RSpec.describe User, type: :user do

  it "test new user creation with valid attributes to be valid" do
    @user = build(:user)
    expect(@user).to be_valid
  end

  it "test new user creation with not unique username not to be valid" do
    @user = create(:user, username: "felipe")
    @user2 = build(:user, username: "felipe")
    expect(@user2).to_not be_valid
  end

  it "test new user creation with not unique email not to be valid" do
    @user = create(:user, email: "fa@gmail.com")
    @user2 = build(:user, email: "fa@gmail.com")
    expect(@user2).to_not be_valid
  end

  it "test new user creation with longer than 20 characters username not to be valid" do

    @user2 = build(:user, username: "assssssssssssssssssssssssssssssssssssssssssss")
    expect(@user2).to_not be_valid
  end

end
