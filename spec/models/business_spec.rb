require 'rails_helper'

RSpec.describe Business, type: :model do

  it "is valid with valid attributes" do
    business = Business.new(
      :name => "test name",
      :shop_type => "Spa and Massage",
      :latitude => 14.0965666,
      :longitude => 1007223969
      )
    expect(business).to be_valid
  end # it "is valid with valid attributes" do

  it "is not valid without a name" do
    business = Business.new(
      :name => nil,
      :shop_type => "Spa and Massage",
      :latitude => 14.0965666,
      :longitude => 1007223969
    )
    expect(business).to_not be_valid
  end # it "is not valid without a name" do

  it "is not valid without a shop_type" do
    business = Business.new(
      :name => "test name",
      :shop_type => nil,
      :latitude => 14.0965666,
      :longitude => 1007223969
    )
    expect(business).to_not be_valid
  end # it "is not valid without a shop_type" do

  it "is not valid without a latitude" do
    business = Business.new(

      :name => "test name",
      :shop_type => "Spa and Massage",
      :latitude => nil,
      :longitude => 1007223969
    )
    expect(business).to_not be_valid
  end # it "is not valid without a latitude" do

  it "is not valid without a longitude" do
    business = Business.new(
      :name => "test name",
      :shop_type => "Spa and Massage",
      :latitude => 14.0965666,
      :longitude => nil
    )
    expect(business).to_not be_valid
  end # it "is not valid without a longitude" do

end
