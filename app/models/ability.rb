class Ability
  include CanCan::Ability

  def initialize(user)
    can :logado, Funcionario
    if user.funcionario.blank?
      can :create, Funcionario
    else
      can :manage, Documento, {:setor_atual => user.funcionario.try(:setor) }
      can [:create, :read], Documento

      can :manage, DocTramitacao do |tramitacao|
        user.funcionario.setor == tramitacao.documento.setor_atual
      end
      can :read, DocTramitacao
      can :read, Funcionario
    end
  end
  
end
