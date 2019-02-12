class RemoveFieldNameFromAnimes < ActiveRecord::Migration[5.2]
  def change
    remove_column :animes, :episode, :string
    remove_column :animes, :season, :string
  end
end
