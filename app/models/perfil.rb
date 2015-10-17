class Perfil < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :permisos
end
