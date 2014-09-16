class AboutPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end
end
