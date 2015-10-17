class Contrato < ActiveRecord::Base
  belongs_to :usuario
  has_many :calidades
  has_many :slas, through: :calidades


end
