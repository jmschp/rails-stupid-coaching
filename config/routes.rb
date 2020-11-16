# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'controller#action'
  # verb "url", to: "controller#action"
  root to: 'questions#ask'
  get '/answer', to: 'questions#answer'
end
