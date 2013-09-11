require 'spec_helper'

describe Service do

  context "always" do

    # attributes

    it "has a description" do
      should respond_to :description
    end

    it "has a name" do
      should respond_to :name
    end

    it "has a value" do
      should respond_to :value
    end

    # associations

    it "has many records" do
      should have_many :records
    end

    # validations

    it "has a valid factory" do
      FactoryGirl.build(:service).should be_valid
    end
                
  end

end
