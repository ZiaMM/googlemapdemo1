class PagesController < ApplicationController

  def home
    @map_zoom_level = 10
    @bangkok_center_location = {:lat => "13.901560", :long => "100.5499730"}
    @images_by_shop_type = Business.images_by_shop_type
    @location_hash_array = Business.map_data
  end

  def about
  end


end
