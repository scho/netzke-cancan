module Netzke
  class Base

    # This method is overwritten in respect to current_user in netzke components
    #
    # @return [Ability]
    def current_ability
      @current_ability ||= Ability.new(Netzke::Core.current_user)
    end

     # cancan calls helper_method, which is present in any controller, but not in a netzke components
     #
     # @params *args
     def self.helper_method(*args)
     end

     include ::CanCan::ControllerAdditions
  end
end