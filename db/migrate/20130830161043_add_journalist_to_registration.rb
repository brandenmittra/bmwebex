class AddJournalistToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :journalist, :boolean
  end
end
