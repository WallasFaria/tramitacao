class SetorsController < InheritedResources::Base
  before_filter :authenticate_usuario!
end
