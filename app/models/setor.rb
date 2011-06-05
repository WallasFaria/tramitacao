class Setor < ActiveRecord::Base
  has_many :funcionarios
  has_many :documentos, 
end
