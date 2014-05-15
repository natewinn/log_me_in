class AddPicUploadToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :pic_upload, :string
  end
end
