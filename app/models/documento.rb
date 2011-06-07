class Documento < ActiveRecord::Base
  has_many :doc_tramitacaos, :order => 'data_hora'
  belongs_to :setor_origem, :class_name => 'Setor'
  belongs_to :funcionario_origem, :class_name => 'Funcionario'
  before_destroy :so_excluir_se_nao_existe_tramitacao
  
  def setor_atual
    if doc_tramitacaos.blank?
      self.setor_origem
    else
      doc_tramitacaos.last.pessoa_destino.setor
    end
  end

  def Documento.tipos
    ['Memorando','Circular interna']
  end

  def pode_ser_excluido?
    doc_tramitacaos.blank?
  end

  def pessoas_para_tramitar(user)
    Funcionario.all.reject {|f| f.setor.nome == user.funcionario.setor.nome}  
  end

  private

  def so_excluir_se_nao_existe_tramitacao
    raise "Nao pode ser excluido" unless pode_ser_excluido?
  end

end
