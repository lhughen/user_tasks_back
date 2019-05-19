Rails.application.routes.draw do
  scope :api, constraints: { format: 'json' } do
    resources :users do
      resources :user_tasks
    end
  end
end
