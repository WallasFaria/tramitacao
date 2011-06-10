class Setor < ActiveRecord::Base
  has_many :funcionarios
  has_many :documentos, :foreign_key => :setor_origem_id

  validates_presence_of :nome
  validates_uniqueness_of :nome
  validates_presence_of :sigla
  validates_uniqueness_of :sigla

  def documentos_comigo
    Documento.select{|d| d.setor_atual == self }
  end

end
