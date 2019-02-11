class CreateStudioVoiceActors < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_voice_actors do |t|
      t.integer :studio_id
      t.integer :voice_actor_id
      t.timestamps
    end
  end
end
