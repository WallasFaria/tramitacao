class DocTramitacaosController < InheritedResources::Base
  belongs_to :documento
  before_filter :authenticate_user!

  load_and_authorize_resource :doc_tramitacao, :through => :documento

  def index
    redirect_to :root
  end
  
end
