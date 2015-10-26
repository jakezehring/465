class Reference < ActiveRecord::Base
  belongs_to :topic

  before_validation :check_url

  validates :URL, :url => true


  def check_url
    unless self.URL[/\Ahttp:\/\//] || self.URL[/\Ahttps:\/\//]
      self.URL = "http://#{self.URL}"
    end
end

end
