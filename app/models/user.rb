class User < ActiveRecord::Migration

  validates :username, presence: true
  validates :password, presence: true

end