class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.text :URL
      t.references :topic, index: true, foreign_key: true

      t.timestamps 
    end
  end
end
