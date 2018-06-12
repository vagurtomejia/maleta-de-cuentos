class Tipo < ActiveRecord::Base
  has_many :cuentos#, :inverse_of => :tipo
end
