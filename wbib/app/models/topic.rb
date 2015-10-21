class Topic < ActiveRecord::Base

	has_many :references, dependent: :destroy

	vaildates :tile, presence: true
	vaildates :description, presence: true
end
