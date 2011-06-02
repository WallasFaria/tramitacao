class Documento < ActiveRecord::Base
  has_many :doc_tramitacaos
  belongs_to :setor_origem, :class_name => 'Setor'
  belongs_to :funcionario_origem, :class_name => 'Funcionario'

  before_destroy :so_excluir_se_nao_existe_tramitacao
  def Documento.tipos
    ['Memorando','Circular interna']
  end

  def pode_ser_excluido?
    doc_tramitacaos.blank?
  end

  private

  def so_excluir_se_nao_existe_tramitacao
    raise "Nao pode ser excluido" unless pode_ser_excluido?
  end
end
