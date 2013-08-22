class Tag < ActiveRecord::Base
  has_many :story_tags
  has_many :stories, through: :tags
end
