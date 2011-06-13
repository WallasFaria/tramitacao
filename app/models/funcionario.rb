class Funcionario < ActiveRecord::Base
  belongs_to :setor
  belongs_to :user
  has_many :documentos, :foreign_key => 'funcionario_origem_id'#, :order => 'data_hora DESC'

  validates_presence_of :nome
  validates_presence_of :matricula
  validates_presence_of :setor
  validates_uniqueness_of :matricula
  validates_format_of :matricula, :with=>/^\d{1,6}$/, :message=>'deve ser formado por ate 6 digitos'

  def documentos_comigo
    Documento.select{|d| d.funcionario_atual == self}
  end
end
