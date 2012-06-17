class Account < ActiveRecord::Base

  attr_accessible :subdomain, :users, :owner

  has_many :users
  belongs_to :owner, :class_name => "User" # TODO: Need to find another way to set flag the account owner

  accepts_nested_attributes_for :owner

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
  validates_associated :users
end
