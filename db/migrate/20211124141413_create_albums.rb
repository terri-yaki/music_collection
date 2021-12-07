class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :alb_id
      t.string :alb_name
      t.string :alb_year

      t.timestamps
    end
  end
end
