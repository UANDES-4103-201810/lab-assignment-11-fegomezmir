require "rails_helper"

RSpec.describe User, type: :User do
it "test new user creation with valid attributes to be valid" do
@user = create(:User)
expect(@user).to be_valid
end

it "test new user creation with not unique username not to be valid" do
  @user = create(:User, username: "felipe")
  @user2 = build(:User, username: "felipe")
  expect(@user).to_not be_valid
end

it "test new user creation with not unique email not to be valid" do
  @user = create(:User, email: "fa@gmail.com")
  @user2 = build(:User, email: "fa@gmail.com")
  expect(@user).to_not be_valid
end

it "test new user creation with longer than 20 characters username not to be valid" do
  @user = create(:User, username: "assssssssssssssssssssssssssssssssssssssssssss")
  @user2 = build(:User, username: "assssssssssssssssssssssssssssssssssssssssssss")
  expect(@user).to_not be_valid
end

end
