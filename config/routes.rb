Rails.application.routes.draw do
  resources :questions do#, only: %i[index new edit create update destroy show]
    resources :answers, except: %i[new show]
  end

  root 'pages#index'
end
