class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.string :name
      t.date :start
      t.integer :people
      t.boolean :pheasent
      t.boolean :dove

      t.timestamps null: false
    end
  end
end
