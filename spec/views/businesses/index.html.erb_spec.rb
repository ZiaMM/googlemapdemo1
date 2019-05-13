# require 'rails_helper'
#
# RSpec.describe "businesses/index", type: :view do
#   before(:each) do
#     assign(:businesses, [
#       Business.create!(
#         :name => "Name1",
#         :shop_type => "Shop Type1",
#         :latitude => 2.5,
#         :longitude => 3.5
#       ),
#       Business.create!(
#         :name => "Name2",
#         :shop_type => "Shop Type2",
#         :latitude => 2.5,
#         :longitude => 3.5
#       )
#     ])
#   end
#
#   it "renders a list of businesses" do
#     render
#     assert_select "tr>td", :text => "Name1".to_s, :count =>1
#     assert_select "tr>td", :text => "Shop Type1".to_s, :count => 1
#     assert_select "tr>td", :text => 2.5.to_s, :count => 2
#     assert_select "tr>td", :text => 3.5.to_s, :count => 2
#   end
# end
