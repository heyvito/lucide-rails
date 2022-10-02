# frozen_string_literal: true

module LucideRails
  module RailsHelper
    def lucide_icon(named, **options)
      content_tag(:svg,
                  IconProvider.icon(named).html_safe,
                  LucideRails.default_options.merge(**options))
    end
  end
end
