class Ability
  include CanCan::Ability

  def initialize(user)
    
    user ||= User.new

    if user.tipo_usuario.descripcion == "Administrador"
        can :manage, :all
    end
    if user.tipo_usuario.descripcion == "Apoderado"
        can :index, Question
        can :show, Question
        can :create, Question
        can :update, Question do |questions|
            questions.user == user
        end

        can :destroy, Question do |questions|
            questions.user == user
        end


        can :destroy, Answer do |answers|
            answers.user == user
        end
        can :create, Answer
    end
    if user.tipo_usuario.descripcion == "Tia"
        #Permisos de Questions y Answers

        can :index, Question
        can :show, Question
        can :create, Question
        can :update, Question do |questions|
            questions.user == user
        end

        can :destroy, Question do |questions|
            questions.user == user
        end


        can :destroy, Answer do |answers|
            answers.user == user
        end
        can :create, Answer

        #Permisos de Agendas

        can :index, Agenda
        can :mostrar, Agenda
        can :nuevo, Agenda
        can :crear, Agenda
        can :update, Agenda do  |agendas|
            agendas.user == user
        end
        can :eliminar, Agenda do |agendas|
            agendas.user == user
        end

        #Permisos de Estudiantes

        can :index, Estudiante
    end
            
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
