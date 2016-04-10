Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'abilities' => 'abilities#index', as: :all_abilities
      get 'abilities/:id' => 'abilities#show', as: :one_ability

      get 'items' => 'items#index', as: :all_items
      get 'items/:id' => 'items#show', as: :one_item
    end
  end
end
