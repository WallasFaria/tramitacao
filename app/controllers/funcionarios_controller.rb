class FuncionariosController < InheritedResources::Base
  before_filter :authenticate_usuario!

  def create
    @funcionario = Funcionario.new(params[:funcionario])
    @funcionario.usuario = current_usuario
    if @funcionario.save
      redirect_to @funcionario
    else
      render :action => :new
    end
  end
end
