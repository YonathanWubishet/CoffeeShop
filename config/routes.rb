Rails.application.routes.draw do
  get 'welcome/index'

  resources :coffee_drinks, :cold_drinks, :coffee_beans, :snacks, :magazines, :other_items

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

