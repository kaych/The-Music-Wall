class AddReviews < ActiveRecord::Migration
  
  def change

    create_table :reviews do |t|
      t.integer :music_id
      t.integer :user_id
      t.string :like
      t.string :comment
    end

  end

end
