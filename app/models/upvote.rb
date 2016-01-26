class Upvote < ActiveRecord::Base

  belongs_to :user 
  belongs_to :music

  # validates :user_id, uniqueness: true 

end