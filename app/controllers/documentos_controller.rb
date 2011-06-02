class DocumentosController < InheritedResources::Base
  before_filter :authenticate_usuario!
  def create
    @documento = Documento.new(params[:documento])
    @documento.setor_origem = current_usuario.funcionario.setor
    @documento.funcionario_origem = current_usuario.funcionario
    if @documento.save
      redirect_to @documento
    else
      render :action => :new
    end
  end
end
