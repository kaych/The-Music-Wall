class User < ActiveRecord::Base

  has_many :musics#, through: :upvotes
  has_many :upvotes
  has_many :reviews

  validates :username, presence: true
  validates :password, presence: true

end