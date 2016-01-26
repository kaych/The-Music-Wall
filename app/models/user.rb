class User < ActiveRecord::Base

  has_many :musics
  has_many :upvotes

  validates :username, presence: true
  validates :password, presence: true

end