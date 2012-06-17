class Product < ActiveRecord::Base
  attr_accessible :code, :name, :vision, :account_id

  belongs_to :account
end
