class Usuario < ActiveRecord::Base
  belongs_to :telefono
  belongs_to :direccion

  def direccion_choose
  	direccion.try(:direccion)
  end

  def direccion_choose=(direccion)
  	  	self.direccion = Direccion.find_by_direccion(direccion) if direccion.present?
  	  	#find_or_create_by_name
  end

end
