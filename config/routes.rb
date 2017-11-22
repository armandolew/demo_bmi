Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'users#mass_index', as: :authenticated_root
      post 'users/calculate_bmi', to: 'users#calculate_bmi'
      get 'users/:id', to: 'users#show', as: 'users_show'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
