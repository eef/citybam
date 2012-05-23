class LaunchAlert < ActiveRecord::Base
  attr_accessible :email

  validates :email, :email => true
end
