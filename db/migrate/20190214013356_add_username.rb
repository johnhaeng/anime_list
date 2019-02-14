class AddUsername < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :anime_users, :rating, :integer
    add_column :anime_users, :favorite, :boolean
  end
end
