class Cuento < ActiveRecord::
  mount_uploader :archivo, ArchivoUploader
end
