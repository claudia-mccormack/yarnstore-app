class CartedYarn < ActiveRecord::Base
  belongs_to :user
  belongs_to :yarn
end
