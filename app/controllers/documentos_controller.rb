class DocumentosController < InheritedResources::Base
  before_filter :authenticate_user!
  load_and_authorize_resource :documento

  def create
    @documento = Documento.new(params[:documento])
    @documento.setor_origem = current_user.funcionario.setor
    @documento.funcionario_origem = current_user.funcionario
    if @documento.save
      redirect_to @documento
    else
      render :action => :new
    end
  end

end
