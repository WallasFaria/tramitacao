class Documento < ActiveRecord::Base
  has_many :doc_tramitacaos, :order => 'data_hora'
  belongs_to :setor_origem, :class_name => 'Setor'
  belongs_to :funcionario_origem, :class_name => 'Funcionario'
  before_destroy :so_excluir_se_nao_existe_tramitacao

  validates_presence_of :assunto
  validates_presence_of :numero_de_processo
  validates_uniqueness_of :numero_de_processo
  validates_format_of :numero_de_processo, :ano, :with=>/^\d{1,4}$/, :message=>'deve ser formado por 4 digitos'
  
  def setor_atual
    tramitacoes = doc_tramitacaos.reject {|t| t.id.nil? }
    tramitacoes.blank? ? self.setor_origem : tramitacoes.last.pessoa_destino.try(:setor)
  end

  def funcionario_atual
    doc_tramitacaos.blank? ? self.funcionario_origem : doc_tramitacaos.last.pessoa_destino
  end
 
  def Documento.tipos
    ['Memorando','Circular interna']
  end

  def pode_ser_excluido?
    doc_tramitacaos.blank?
  end

  def pessoas_para_tramitar
    Funcionario.all.reject {|f| f.setor == setor_atual }  
  end

  private

  def so_excluir_se_nao_existe_tramitacao
    raise "Nao pode ser excluido" unless pode_ser_excluido?
  end

end
