require 'rails_helper'

describe PagesController, :home, type: :controller do

  it "returns a successful response" do
    get :home
    expect(response).to be_successful
  end

  it "renders the home template" do
    get :home
    expect(response).to render_template(:home)
  end

  it "sets the correct zoom level" do
    get :home
    # expect(@map_zoom_level).to eq 10
    expect(assigns(:map_zoom_level)).to eq 10
  end

  it "sets the correct map-center location" do
    get :home
    expect(assigns(:bangkok_center_location)).to include(
      :lat => "13.901560",
      :long => "100.5499730"
    )
  end

  it "finds the shop_type icon images" do
    get :home
    expect(assigns(:images_by_shop_type)).to eq Business.images_by_shop_type
  end

  it "returns the correct number of shop locations" do
    get :home
    expect(assigns(:location_hash_array)).to eq Business.all.limit(Business.qty_return_for_map).as_json(only: [:shop_type, :name, :latitude, :longitude])
  end

end


# Handling this in intergration-tests (requests)
# describe PagesController, :about, type: :controller do
#   xit '' do
#   end
# end
