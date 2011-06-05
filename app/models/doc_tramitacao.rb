class DocTramitacao < ActiveRecord::Base
  belongs_to :documento
  belongs_to :pessoa_destino, :class_name => 'Funcionario'
  before_create :gerar_data_hora

  def gerar_data_hora
    self.data_hora = Time.now
  end
end
