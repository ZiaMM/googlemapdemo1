require 'rails_helper'

RSpec.describe "pages/about", type: :view do
  it 'renders correct content' do
    render
    assert_select "h1", :text => "About This Project".to_s, :count =>1
    # expect(view.content_for(:title)).to include("About This Project")
  end

end
