class Image < ActiveRecord::Base
  belongs_to :user
  has_many :image_users
  has_many :tags
  
  def generate_filename
    self.filename = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end
end
