class Empresa < ActiveRecord::Base
  belongs_to :telefono
  belongs_to :direccion
  belongs_to :usuario
end
