class AddUserImg < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img, :string, :nul => false, :default => "/assets/default-user.png"
  end
end
