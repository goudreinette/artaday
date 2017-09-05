class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :todays_topic

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def todays_topic
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def self.make_methods(model, *methods)
    singular = model.name.downcase
    plural   = singular.pluralize

    define_method :show do
      instance_variable_set "@#{singular}".to_sym, model.find(params[:id])
    end

    define_method :new do
    end

    define_method :create do
    end

    define_method :edit do
    end

    define_method :update do
    end

    define_method :delete do
    end
  end
end
