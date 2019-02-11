class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :summary
      t.integer :episodes
      t.integer :seasons
      t.integer :episode_duration
      t.date :release_date

      t.timestamps
    end
  end
end
