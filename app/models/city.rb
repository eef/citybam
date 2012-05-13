class City < ActiveRecord::Base
  attr_accessible :area_code, :country, :lat, :lng, :metro_code, :name, :postal_code, :region

  class << self

    def search(query)
      response = []
      live(["name", "id", "country"]).where("name LIKE ?", query.concat("%")).group(:country).each {|res| response << {:label => res.name, :country => res.country, :id => res.id} }
      response
    end

    def live(fields=[])
      if fields.blank?
         where(:active => true)
      else
        select(fields).where(:active => true)
      end
    end

  end

end
