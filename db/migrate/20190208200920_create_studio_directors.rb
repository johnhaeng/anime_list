class CreateStudioDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :studio_directors do |t|
      t.integer :studio_id
      t.integer :director_id

      t.timestamps
    end
  end
end
