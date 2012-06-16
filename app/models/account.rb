class Account < ActiveRecord::Base
  attr_accessible :subdomain

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
end
