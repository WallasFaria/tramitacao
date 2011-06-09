class Setor < ActiveRecord::Base
  has_many :funcionarios
  has_many :documentos, :foreign_key => :setor_origem_id

  def documentos_comigo
    Documento.select{|d| d.setor_atual == self }
  end

end
