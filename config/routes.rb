Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks, except: %i[show] do
    collection do
      get :export_csv
    end
  end
end
