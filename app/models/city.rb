class City < ActiveRecord::Base
  acts_as_gmappable
  attr_accessible :area_code, :country, :latitude, :longitude, :metro_code, :name, :postal_code, :region

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

  def gmaps4rails_address
    "#{self.name}, #{self.country}"
  end

end
