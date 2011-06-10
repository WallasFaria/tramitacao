class FuncionariosController < InheritedResources::Base
  before_filter :authenticate_user!
  load_and_authorize_resource :funcionario
    
  def create
    @funcionario = Funcionario.new(params[:funcionario])
    @funcionario.user = current_user
    if @funcionario.save
      redirect_to @funcionario
    else
      render :action => :new
    end
  end

  def logado
    if current_user.funcionario.blank?
      redirect_to new_funcionario_path
    else
      redirect_to current_user.funcionario
    end
  end
  
end
