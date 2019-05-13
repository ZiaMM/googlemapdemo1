# require 'rails_helper'
#
# RSpec.describe "businesses/edit", type: :view do
#   before(:each) do
#     @business = assign(:business, Business.create!(
#       :name => "MyString",
#       :shop_type => "MyString",
#       :latitude => 1.5,
#       :longitude => 1.5
#     ))
#   end
#
#   it "renders the edit business form" do
#     render
#
#     assert_select "form[action=?][method=?]", business_path(@business), "post" do
#
#       assert_select "input#business_name[name=?]", "business[name]"
#
#       assert_select "input#business_shop_type[name=?]", "business[shop_type]"
#
#       assert_select "input#business_latitude[name=?]", "business[latitude]"
#
#       assert_select "input#business_longitude[name=?]", "business[longitude]"
#     end
#   end
# end
