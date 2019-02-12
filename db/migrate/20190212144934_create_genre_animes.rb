class CreateGenreAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_animes do |t|
        t.integer :anime_id
        t.integer :genre_id
      t.timestamps
    end
  end
end
