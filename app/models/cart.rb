class Cart < ActiveRecord::Base

  has_many :items dependent: :destroy
  has_one :order dependent: :destroy
  
end
