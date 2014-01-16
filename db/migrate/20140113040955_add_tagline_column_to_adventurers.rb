class AddTaglineColumnToAdventurers < ActiveRecord::Migration
  def change
    add_column :adventurers, :tagline, :string
  end
end
