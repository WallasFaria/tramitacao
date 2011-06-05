class FuncionariosController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    @funcionario = Funcionario.new(params[:funcionario])
    @funcionario.user = current_user
    if @funcionario.save
      redirect_to @funcionario
    else
      render :action => :new
    end
  end
  
end
