class Ability
  include CanCan::Ability

  def initialize(usuario)
    # Define abilities for the passed in usuario here. For example:
    #
    #   usuario ||= usuario.new # guest usuario (not logged in)
    #   if usuario.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the usuario 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the usuario can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the usuario can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
    usuario ||= Usuario.new # guest usuario (not logged in)
    # a signed-in usuario can do everything
     # an admin can do everything
      can :admin, @facturas if usuario.role == "admin"
      # an editor can do everything to documents and reports
      can :usuario, @facturas if usuario.role == "usuario"

      can :dashboard, @facturas if usuario.role == "admin"
      can :dashboard, @facturas if usuario.role == "usuario"

      can :facturas, @facturas if usuario.role == "admin"
      can :facturas, @facturas if usuario.role == "usuario"

      can :usuarioadmon, @facturas if usuario.role == "admin"


    

  end
end
