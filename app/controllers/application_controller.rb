class ApplicationController < ActionController::Base
    layout :layout_by_resource
    
    protected
    
    def layout_by_resource
        if devise_controller? && resource_class == Admin
            "admin_devise"
        elsif devise_controller? && resource_class == User
            "user_devise"
        else
            "application"
        end
    end

    def layout_by_resource
        devise_controller? ? "#{resource_class.to_s.downcase}_devise" : "application"
    end
    
end
