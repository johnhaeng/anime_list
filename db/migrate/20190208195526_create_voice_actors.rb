class CreateVoiceActors < ActiveRecord::Migration[5.2]
  def change
    create_table :voice_actors do |t|
      t.string :name
      t.string :gender
      t.string :picture_url
      t.integer :age
      t.timestamps
    end
  end
end
