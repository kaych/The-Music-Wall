class User < ActiveRecord::Base

  has_many :musics#, through: :upvotes
  has_many :upvotes
  has_many :reviews

  validates :username, presence: true
  validates :password, presence: true

  def has_upvoted_song?(song)
    self.upvotes.where(music_id: song.id).exists?
  end

  def has_reviewed_song?(song)
    self.reviews.where(music_id: song.id).exists?
  end

end
