class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  has_many :wants, foreign_key: "item_id", dependent: :destroy
  has_many :want_users, through: :wants, source: :user
  
  has_many :havas, foreign_key: "item_id", dependent: :destroy
  has_many :hava_users, through: :havas, source: :user

end
