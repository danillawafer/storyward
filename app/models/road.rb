class Road < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  has_many :votes
  validates :content, presence: true, length: { in: 10..1000 }
end
