class AddPublicationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :publication, :string
  end
end
