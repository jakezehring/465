class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.name :string
      t.date :date
      t.people :int
      t.pheasent :boolean
      t.dove :boolean

      t.timestamps null: false
    end
  end
end
