class Calidad < ActiveRecord::Base
  belongs_to :sla
  belongs_to :contrato

end
