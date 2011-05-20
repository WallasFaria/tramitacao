class Documento < ActiveRecord::Base
  has_many :doc_tramitacaos
  belongs_to :setor
  belongs_to :funcionario
end
