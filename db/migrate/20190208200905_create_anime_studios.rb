class CreateAnimeStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_studios do |t|
      t.integer :anime_id
      t.integer :studio_id

      t.timestamps
    end
  end
end
