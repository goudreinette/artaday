class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def self.make_methods(model, *methods)
    singular = model.name.downcase
    plural   = singular.pluralize

    class_eval do
      def show
        instance_variable_set "@#{singular}".to_sym, model.find(params[:id])
      end

      def new
      end

      def create
      end

      def edit
      end

      def update
      end

      def delete
      end
    end
  end
end
