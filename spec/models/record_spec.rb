require 'spec_helper'

describe Record do

  context "always" do

    # attributes

    it "has a total amount" do
      should respond_to :total_amount
    end

    # associations

    it "belongs to a user" do
      should belong_to :user
    end

    it "belongs to a service" do
      should belong_to :service
    end

    # validations

    it "has a valid factory" do
      FactoryGirl.build(:record).should be_valid
    end
                
  end

end