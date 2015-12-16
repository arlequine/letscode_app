Rails.application.routes.draw do
  
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get '/logout', to: 'sessions#logout', as: 'logout'

  get '/signin', to: 'sessions#sign_in_form', as: 'sign_in_form'

  post '/signin', to: 'sessions#signin', as: 'signin'

  get '/questions/:id/answer/new', to: 'answers#new', as: 'show_answer'
  
  get '/collaboration/collaboration', as: 'collaboration'

  get '/proyecto/:id/collaboration/collaboration', to: 'collaboration#collaboration', as: 'show_collaboration_space'

#Back´s zone open
  get '/proyecto/:proyecto_id/collaboration/collaboration', to:'collaboration#collaboration', as: 'back_collaboration_space'
#Back´s zone close
  get '/questions/:id/collaboration/collaboration', to: 'collaboration#answers_question', as: 'show_answers_question'

  get '/proyecto/:id/users/show', to: 'postulations#create', as: 'request'

  get '/proyectos/new', to: 'proyectos#new', as: 'new_project'
 
  get '/proyectos/:id', to: 'proyectos#show', as: 'description_project'


  #get ':proyecto_id/:user_id', to: 'postulations#update', as: 'update_request'
   get '/proyecto/:id/users/:user_id/practicantes/show', to: 'postulations#update', as: 'update_request'


  get '/proyecto/:id/practicantes/show', to: 'practicantes#show', as: 'show_participantes_proyecto'


  get '/user/:id/perfil/practicante', to: 'practicantes#profile', as: 'perfil_pract'


  get '/proyecto/:id/practicantes/show', to: 'practicantes#back', as: 'back_participantes_proyecto'

  get '/question/:id/collaboration/collaboration', to: 'collaboration#download_file', as: 'download_file'

  
  resources :users
  resources :skills
  resources :proyectos
  resources :answers
 
  
  resources :proyectos do
    resources :questions
  end

  resources :questions do
      resources :answers
    end

  root 'sessions#home'
  
  Letscode::Application.routes.draw do
   resources :questions, only: [:index, :new, :create, :destroy]
   #root "resumes#index"
  end
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
