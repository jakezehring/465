class Resort < ActiveRecord::Base
  belongs_to :user

  def info
    "#{start.strftime("%B, %d, %Y")}"
  end
end
