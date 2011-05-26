class Documento < ActiveRecord::Base
  has_many :doc_tramitacao
  belongs_to :setor_origem, :class_name => 'Setor'
  belongs_to :funcionario_origem, :class_name => 'Funcionario'
  def Documento.tipos
    ['Memorando','Circular interna']
  end
end
