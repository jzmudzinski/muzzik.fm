require 'spec_helper'

describe User do

  context "basic validations" do
    let(:user) { FactoryGirl.build(:user) }

    it "is NOT valid without an email" do
      user.email = nil
      user.should_not be_valid
    end

    it "is NOT valid without password" do
      user.password = nil
      user.should_not be_valid
    end

    it "is NOT valid without exact password confirmation" do
      user.password_confirmation = "incorrect_confirmation"
      user.should_not be_valid
    end
  end

end
