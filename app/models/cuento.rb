class Cuento < ActiveRecord::Base
  mount_uploader :archivo, ArchivoUploader
end
