class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :sid
      t.string :name
      t.string :link
      t.boolean :favourite

      t.timestamps
    end
  end
end
