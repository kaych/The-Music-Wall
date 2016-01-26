class Music < ActiveRecord::Base

  belongs_to :user
  has_many :user, through: :upvotes
  has_many :upvotes

  validates :song_title, presence: true
  validates :author, presence: true

end