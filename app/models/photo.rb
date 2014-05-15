class Photo < ActiveRecord::Base
	mount_uploader :pic_upload, PicUploadUploader
end
