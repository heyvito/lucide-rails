# frozen_string_literal: true

module LucideRails
  class Railtie < Rails::Railtie
    initializer "lucide-rails.helper" do
      ActionView::Base.include LucideRails::RailsHelper
    end
  end
end
