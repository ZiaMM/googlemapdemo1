require 'rails_helper'

RSpec.describe "pages/home", type: :view do
  it 'renders correct content' do
    render
    assert_select "h1", :text => "Testing Google Maps".to_s, :count =>1
  end

end
