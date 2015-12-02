class CreateResorts < ActiveRecord::Migration
  def change
    create_table :resorts do |t|
      t.string :name
      t.date :start
      t.date :end
      t.integer :people

      t.timestamps null: false
    end
  end
end
