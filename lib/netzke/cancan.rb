module Netzke
  class Base

    # This method is returns the current ability with the current user from netzke
    #
    # @return [Ability]
    def current_ability
      @current_ability ||= Ability.new(Netzke::Core.current_user)
    end

    # cancan calls helper_method, which is present in any controller, but not in a netzke components
    #
    # @params *args
    def self.helper_method(*args)
      # We don't do anything since there is no view layer in netzke components
    end

    # Include the cancan controller additions
    include ::CanCan::ControllerAdditions
  end
end