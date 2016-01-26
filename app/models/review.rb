class Review < ActiveRecord::Base 

  belongs_to :user
  belongs_to :music

  validates :like, presence: true, format: { with: /(like|dislike)/ }
  validates :comment, presence: true, length: { minimum: 4 }

end 