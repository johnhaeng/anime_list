class AddImage < ActiveRecord::Migration[5.2]
  def change
    add_column :animes, :image, :string
  end
end
