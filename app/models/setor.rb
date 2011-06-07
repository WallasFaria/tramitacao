class Setor < ActiveRecord::Base
  has_many :funcionarios
  has_many :documentos, :foreign_key => :setor_origem_id
end
