module Metatags
  class Railtie < Rails::Railtie
    initializer "application_controller.init_metatags" do
      ActionController::Base.send :include, Metatags::ControllerMethods
      ActionView::Base.send :include, Metatags::HelperMethods
    end
  end
end