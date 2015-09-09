class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :text
      t.datetime :posted_at
      t.integer :news_source
      t.string :news_source_reference
      t.integer :created_by
      t.integer :updated_by

      t.timestamps null: false
    end
  end
end
