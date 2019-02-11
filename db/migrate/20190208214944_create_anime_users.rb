class CreateAnimeUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :anime_users do |t|

      t.timestamps
    end
  end
end
