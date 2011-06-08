class Funcionario < ActiveRecord::Base
  belongs_to :setor
  belongs_to :user
  has_many :documentos, :foreign_key => 'funcionario_origem_id'

  def documentos_comigo
    Documento.select{|d| d.funcionario_atual == self}
  end
end
