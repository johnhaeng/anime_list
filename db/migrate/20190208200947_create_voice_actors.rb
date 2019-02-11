class CreateVoiceActors < ActiveRecord::Migration[5.2]
  def change
    create_table :voice_actors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :picture_url

      t.timestamps
    end
  end
end
