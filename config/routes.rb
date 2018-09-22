Rails.application.routes.draw do
  
  get 'rss/index'
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :projects
  resources :posts

	get 'posts/%{title}/show', to: 'posts#show'
	get 'feeds', to: "rss#index", format: 'rss'
	root 'posts#index'
	get '/contact' => 'static_pages#contact'
	get '/about' => 'static_pages#about'
	devise_scope :user do
		get '/admin' => 'devise/sessions#new'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
