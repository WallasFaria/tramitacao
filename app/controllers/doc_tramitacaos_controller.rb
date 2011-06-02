class DocTramitacaosController < InheritedResources::Base
  belongs_to :documento
  before_filter :authenticate_usuario!
end
