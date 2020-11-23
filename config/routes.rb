Rails.application.routes.draw do
  # get 'welcome/index' tells Rails to map requests 
  # to http://localhost:3000/welcome/index to the welcome controller's index action. 
  # This was created earlier when you ran the controller generator (rails generate controller Welcome index).
  get 'welcome/index'

  # Rails provides a resources method which can be used to declare a standard REST resource. 
  # You need to add the article resource to the config/routes.rb so the file will look as follows:
  # resources :articles
  resources :articles do
    resources :comments
  end

  resources :users do
    resources :comments
  end


  # root 'welcome#index' tells Rails to map requests to the root of the application to the 
  # welcome controller's index action and ''
  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
