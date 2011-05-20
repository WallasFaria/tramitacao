class DocTramitacao < ActiveRecord::Base
  belongs_to :setor
  belongs_to :pessoa
end
