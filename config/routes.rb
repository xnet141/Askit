Rails.application.routes.draw do
  resources :questions do#, only: %i[index new edit create update destroy show]
    resources :answers, only: %i[create destroy update edit]
  end

  root 'pages#index'
end
