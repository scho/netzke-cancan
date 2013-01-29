module Netzke
  class Base

    # This method returns the current ability with the current user from
    # the controller.
    #
    # @return [Ability]
    def current_ability
      @current_ability ||= Ability.new(Netzke::Base.controller.current_user)
    end

    # cancan calls helper_method, which is present in any controller, but not
    # in a netzke component
    #
    # @params *args
    def self.helper_method(*args)
      # We don't do anything since there is no view layer in netzke components
    end

    # Include the cancan controller additions
    include ::CanCan::ControllerAdditions
  end
end
