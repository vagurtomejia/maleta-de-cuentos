class Cuento < ActiveRecord::Base
  mount_uploader :archivo, ArchivoUploader
  belongs_to :tipo#, :inverse_of => :cuento
  belongs_to :subtipo#, :inverse_of => :cuento
  # has_one :subtipo, through: :tipo, source: :subtipo
end
