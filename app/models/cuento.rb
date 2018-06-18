class Cuento < ActiveRecord::Base
  mount_uploader :archivo, ArchivoUploader
  belongs_to :tipo#, :inverse_of => :cuento
  belongs_to :subtipo#, :inverse_of => :cuento

  validates :titulo, presence: true, length: {minimum: 2}
  validates :autor, presence: true
  #validates :archivo, file_size: { less_than: 40. megabytes }
end
