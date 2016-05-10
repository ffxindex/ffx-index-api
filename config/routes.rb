Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      get '/all' => 'combinations#index', as: :all_entries

      scope 'abilities' do
        get '/' => 'abilities#index', as: :all_abilities
        get '/:id' => 'abilities#show', as: :one_ability
      end

      scope 'items' do
        get '/' => 'items#index', as: :all_items
        get '/items_with_monsters' => "items#items_with_monsters", as: :items_with_monsters
        get '/:id' => 'items#show', as: :one_item
      end

      scope 'monsters' do
        get '/' => 'monsters#index', as: :all_monsters
        get '/:id' => 'monsters#show', as: :one_monster
      end

      scope 'locations' do
        get '/' => 'locations#index', as: :all_locations
        get '/:id' => 'locations#show', as: :one_location
      end
    end
  end
end
