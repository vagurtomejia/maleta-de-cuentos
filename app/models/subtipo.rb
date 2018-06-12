class Subtipo < ActiveRecord::Base
  # belongs_to :tipo
  has_many :cuentos
end
