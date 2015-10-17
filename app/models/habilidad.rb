class Habilidad < ActiveRecord::Base
  belongs_to :usuario

# para aplicarlo en caso de que el usuario quiera crear otra habilidad (en no se ocupa actualmente)
  def habilidad_nombre
  	habilidad.try(:habilidad)
  end

  def habilidad_nombre=(habilidad)
  	  	self.habilidad = Habilidad.find_or_create_by_habilidad(habilidad) if habilidad.present?
  	  	#find_or_create_by_name
  end

end
