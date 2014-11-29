require 'rails_helper'
require 'spec_helper'

describe Item do
  it "has a valid factory" do
    FactoryGirl.create(:item).should be_valid
  end
  it "has a name"
  it "has a brand"
  it "has at least a primary color"
  it "has an MSRP"
end