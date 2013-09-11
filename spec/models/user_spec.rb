require 'spec_helper'

describe User do

  context "always" do

    # attributes

    it "has a first_name" do
      should respond_to :first_name
    end

    it "has a last_name" do
      should respond_to :last_name
    end

    it "has a phone" do
      should respond_to :phone
    end

    # associations

    it "has many records" do
      should have_many :records
    end

    # validations

    it "has a valid factory" do
      FactoryGirl.build(:user).should be_valid
    end
                
  end

end
