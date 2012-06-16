class Account < ActiveRecord::Base
  attr_accessible :subdomain

  belongs_to :owner, :class_name => "User"

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
end
