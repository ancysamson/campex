Rails.application.routes.draw do
  resources :timetables do
    member do
      match 'allot_periods', via: [:get, :post]
      get 'get_paper_teachers'
    end
  end
  resources :staffs do
    member do
      get 'assign_papers'
    end
  end
  resources :staff_grades
  resources :staff_positions
  resources :staff_categories
  resources :class_timings do
    resources :periods
  end
  resources :students
  resources :boards
  resources :paper_types
  resources :courses, shallow: true do
    resources :batches do
      resources :terms do
        resources :papers
      end
    end
    
    collection do
      get 'get_course_types'
    end
  end
  resources :course_types
  resources :departments
  root 'dashboard#index'

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
