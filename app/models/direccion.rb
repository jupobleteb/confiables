class Direccion < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :comuna
end
