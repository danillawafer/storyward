class Road < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  has_many :votes
  validates :content, presence: true

  def road_story
  	Story.find_by_id(self.story_id)
  end
end
