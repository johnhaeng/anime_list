class CreateVoiceActorAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :voice_actor_animes do |t|
      t.integer :anime_id
      t.integer :voice_actor_id
      t.timestamps
    end
  end
end
