Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'abilities' => 'abilities#index', as: :all_abilities
      get 'abilities/:id' => 'abilities#show', as: :one_ability
    end
  end
end
