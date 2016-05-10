Rails.application.routes.draw do
  namespace :v1 do
    get '/all' => 'combinations#index', as: :all_entries

    scope 'abilities' do
      get '/(key/:api_key)' => 'abilities#index', as: :all_abilities
      get '/:id(/key/:api_key)' => 'abilities#show', as: :one_ability
    end

    scope 'items' do
      get '/(key/:api_key)' => 'items#index', as: :all_items
      get '/items_with_monsters/(key/:api_key)' => "items#items_with_monsters", as: :items_with_monsters
      get '/:id(/key/:api_key)' => 'items#show', as: :one_item
    end

    scope 'monsters' do
      get '/(key/:api_key)' => 'monsters#index', as: :all_monsters
      get '/:id(/key/:api_key)' => 'monsters#show', as: :one_monster
    end

    scope 'locations' do
      get '/(key/:api_key)' => 'locations#index', as: :all_locations
      get '/:id(/key/:api_key)' => 'locations#show', as: :one_location
    end
  end

  %w( 403 404 422 500 503 ).each do |code|
    get code, to: "errors#show", code: code
  end
end
