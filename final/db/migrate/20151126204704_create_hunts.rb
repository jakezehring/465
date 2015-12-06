class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start
      t.integer :people
      t.boolean :pheasent
      t.boolean :dove

      t.timestamps null: false
    end
  end
end
