module ControllerMacros
  def set_engine_routes
    before(:each) do
      @routes = Inqr::Core::Engine.routes
    end
  end
end
