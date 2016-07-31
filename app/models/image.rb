class Image < ActiveRecord::Base
  belongs_to :yarn

  def yarn
    Yarn.find_by(id: params[:yarn_id])
  end
end
