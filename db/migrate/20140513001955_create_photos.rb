class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo_name
      t.datetime :photo_date
      t.string :photo_pic
      t.text :photo_description

      t.timestamps
    end
  end
end
