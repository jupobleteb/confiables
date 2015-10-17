class Laboral < ActiveRecord::Base
  belongs_to :telefono
  belongs_to :direccion
  belongs_to :usuario
  belongs_to :empresa
end
