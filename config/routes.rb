# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about/index'
  get 'traps/index'
  get 'traps/show'
  get 'spells/index'
  get 'spells/show'
  get 'monsters/index'
  get 'monsters/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
