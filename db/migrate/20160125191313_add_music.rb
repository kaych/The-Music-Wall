class AddMusic < ActiveRecord::Migration
  
  def change

    create_table :music do |t|
      t.string :song_title
      t.string :author
      t.string :url
      t.timestamps null: false
    end

  end
  
end
