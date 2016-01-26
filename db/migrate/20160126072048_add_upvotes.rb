class AddUpvotes < ActiveRecord::Migration
  
  def change

    create_table :upvotes do |t|
      t.integer :user_id
      t.integer :music_id
      t.boolean :upvote
    end
    
  end

end
