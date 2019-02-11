class CreateAnimePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_publishers do |t|
      t.integer :anime_id
      t.integer :publisher_id
      
      t.timestamps
    end
  end
end
