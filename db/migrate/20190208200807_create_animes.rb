class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :episode
      t.string :season
      t.integer :release_date

      t.timestamps
    end
  end
end
