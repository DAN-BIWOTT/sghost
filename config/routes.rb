Rails.application.routes.draw do
  resources :public_blogs do
      get '/detailed',to:'public_blogs#detailed', as: 'detailed'
  end
  resources :blog_panels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :blog_panel
    resources :portfolio
    get 'home/index'
  root 'home#index'
end
