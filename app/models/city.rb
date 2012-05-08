class City < ActiveRecord::Base
  attr_accessible :area_code, :country, :lat, :lng, :metro_code, :name, :postal_code, :region
end
