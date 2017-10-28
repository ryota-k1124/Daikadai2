class Instag < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
end
