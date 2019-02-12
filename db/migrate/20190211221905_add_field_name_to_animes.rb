class AddFieldNameToAnimes < ActiveRecord::Migration[5.2]
  def change
    add_column :animes, :episodes, :integer
    add_column :animes, :seasons, :integer
    add_column :animes, :summary, :string
    add_column :animes, :episode_duration, :integer
  end
end
