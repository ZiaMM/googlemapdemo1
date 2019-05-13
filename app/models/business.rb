class Business < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :shop_type, :presence => true
  validates :latitude, :presence => true, :numericality => true
  validates :longitude, :presence => true, :numericality => true

  def self.geo_limits # "Bangkok Area" limits used to create seed-data
    return {:north => 140965666, :south => 135982308, :east => 1007223969, :west => 1003229622}
  end

  def self.business_types
    # these could be put in a separate table with ID here,
    # or could keep in this table but use enum-integers to speed indexing by business-type
    return ["Spa and Massage", "Nails", "Hair Removal", "Barbershop"]
  end

  def self.images_by_shop_type # used for map-icons
    return {"Spa and Massage" => "icon-spa.png", "Nails" => "icon-nailsalon.png", "Hair Removal" => "icon-hair_removal.png", "Barbershop" => "icon-barber.png"}
  end

  def self.qty_return_for_map
    return 1000
  end

  def self.map_data
    Rails.cache.fetch("map_data", :expires_in => 1.day) do
      # puts "--------------- cache not used ----------------"
      self.all.limit(self.qty_return_for_map).as_json(only: [:shop_type, :name, :latitude, :longitude])
    end
  end

  def self.cache_duration
    return (1.day)
  end

  private
  # # This Needed ONLY if adding functionality to change data-set within the application.
  # def self.clear_cache
  #   Rails.cache.delete('map_data')
  # end

end # class

# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string
#  shop_type  :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_businesses_on_name       (name) UNIQUE
#  index_businesses_on_shop_type  (shop_type)
#
