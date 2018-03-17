Rails.application.routes.draw do
  # devise_scope :user do
  #   root 'devise/sessions#new'
  # end
  devise_for :users, :controllers => {registrations: 'registrations'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contacts#new'
  resources :contacts
end
