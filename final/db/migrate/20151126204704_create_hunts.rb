class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start
      t.integer :people
      t.boolean :pheasent, default: false
      t.boolean :dove, default: false

      t.timestamps null: false
    end
  end
end
