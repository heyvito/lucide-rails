# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "index#index"

  # https://github.com/heyvito/lucide-rails/issues/14
  get "/issue14" => "index#issue14"
  get "/size_option" => "index#size_option"
end
