class Sla < ActiveRecord::Base
	  has_many :calidades
 	  has_many :contrato, through: :calidades
end
