class City < ActiveRecord::Base
  attr_accessible :area_code, :country, :lat, :lng, :metro_code, :name, :postal_code, :region

  class << self

    def search(query)
      response = []
      select(["name", "id", "country"]).where(:active => true).where("name LIKE ?", query.concat("%")).group(:country).each {|res| response << {:label => res.name, :country => res.country, :id => res.id} }
      response
    end

  end

end
