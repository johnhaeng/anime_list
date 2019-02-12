class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :animes, :director_id, :integer
    add_column :animes, :studio_id, :integer
    add_column :animes, :publisher_id, :integer
  end
end
