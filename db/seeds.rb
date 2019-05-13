# if Rails.env.development?

  # Do not add businesses if have 1000+ in DB
  current_count = Business.all.count
  needed_count = (current_count < 1000) ? (1000 - current_count) : 0
  if needed_count == 0
    puts "---- Have 1000 Businesses In DB Already ---"
    return
  else
    puts "---- Creating " + needed_count.to_s + " Businesses ---"
  end

  business_types_count = Business.business_types.count
  Faker::Config.random = Random.new(42)
  needed_count.times do |index|
    business = Business.new()
    random_business_name = Faker::Company.name
    # handle duplicates from Faker
    while Business.find_by(:name => random_business_name).present?
      random_business_name = Faker::Company.name
    end
    business.name = random_business_name
    shop_type_index = ((index % business_types_count) + business_types_count) % business_types_count;
    business.shop_type = Business.business_types[shop_type_index]
    business.latitude = (Faker::Number.between(Business.geo_limits[:south], Business.geo_limits[:north])*0.0000001).truncate(7).to_f
    business.longitude = (Faker::Number.between(Business.geo_limits[:west], Business.geo_limits[:east])*0.0000001).truncate(7).to_f

    business.save!
  end # times

# end # if development
