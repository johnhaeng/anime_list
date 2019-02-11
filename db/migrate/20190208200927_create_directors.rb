class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :picture_url

      t.timestamps
    end
  end
end
