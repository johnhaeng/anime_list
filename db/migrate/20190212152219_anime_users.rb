class AnimeUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :anime_users, :user_id, :integer
    add_column :anime_users, :anime_id, :integer
  end
end
