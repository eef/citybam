class Contact < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :contactable, :polymorphic => true
end
