class Funcionario < ActiveRecord::Base
  belongs_to :setor
  belongs_to :user
  has_many :documentos, :foreign_key => 'funcionario_origem_id'
end
