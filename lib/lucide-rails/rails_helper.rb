# frozen_string_literal: true

module LucideRails
  module RailsHelper
    def lucide_icon(named, **options)
      if options[:class]
        options[:class] = [
          LucideRails.default_options[:class] || "",
          options[:class]
        ].join(" ")
      end

      content_tag(:svg,
                  IconProvider.icon(named).html_safe,
                  LucideRails.default_options.merge(**options))
    end
  end
end
