class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Documento, {:setor_atual => user.funcionario.setor }
    can [:create, :read], Documento

    can :manage, DocTramitacao do |tramitacao|
      user.funcionario.setor == tramitacao.documento.setor_atual
    end
    can :read, DocTramitacao
    can :create, Funcionario if user.funcionario.blank?
  end
  
end
