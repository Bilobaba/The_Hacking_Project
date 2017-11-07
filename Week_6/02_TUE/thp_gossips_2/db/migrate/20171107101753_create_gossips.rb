class CreateGossips < ActiveRecord::Migration[5.1]
  def change
    create_table :gossips do |t|
      t.text :content
      t.datetime :creation_datetime
      t.references :creator, foreign_key: true

      t.timestamps
    end
  end
end
