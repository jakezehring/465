class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.name :string
      t.start :date
      t.end :date
      t.people :int

      t.timestamps null: false
    end
  end
end
