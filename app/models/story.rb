class Story < ActiveRecord::Base
	has_and_belongs_to_many :tags
	belongs_to :user
	has_many :roads
	validates :content, presence: true
end
