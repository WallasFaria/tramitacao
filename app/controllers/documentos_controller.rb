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

  def index
    if current_user.funcionario.blank?
      redirect_to new_funcionario_path
    else
      @documentos = Documento.all

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @documentos }
      end
    end
  end

end
