class Venue < ActiveRecord::Base
  attr_accessible :long_description, :short_description, :name
  has_one :contact, :as => :contactable, :dependent => :destroy
  accepts_nested_attributes_for :contact, :allow_destroy => true
end
