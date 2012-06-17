class Account < ActiveRecord::Base

  attr_accessible :subdomain, :users

  has_many :users
  has_many :products

  accepts_nested_attributes_for :users

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
  validates_associated :users

  OWNER = 'owner'
  ADMIN = 'admin'
  OBSERVER = 'observer'
  MEMBER = 'member'
end
