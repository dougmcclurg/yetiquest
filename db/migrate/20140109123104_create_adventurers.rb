class CreateAdventurers < ActiveRecord::Migration
  def change
    create_table :adventurers do |t|
      t.string :name

      t.timestamps
    end

    add_index :adventurers, :name, unique: true
  end
end
