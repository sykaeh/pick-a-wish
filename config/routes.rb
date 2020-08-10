Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "main#index"
  devise_for :users

  resources :lists do
    resources :items
  end
  resources :groups


  # Item actions
  get 'items/:id/pick' => 'items#pick', as: :pick
  get 'items/:id/release' => 'items#release', as: :release
  get 'items/:id/bought' => 'items#bought', as: :bought

  get 'shopping' => 'main#shopping_list', as: :shopping

  # group actions
  get 'members/:id/accept' => 'groups#accept', as: :member_accept
  get 'members/:id/reject/' => 'groups#reject', as: :member_reject
  get 'groups/:id/leave' => 'groups#leave', as: :leave_group

end
