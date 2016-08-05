class CategoryYarn < ActiveRecord::Base
  belongs_to :category
  belongs_to :yarn
end
