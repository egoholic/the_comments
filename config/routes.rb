Rails.application.routes.draw do
  resources :ip_black_lists do
    patch :to_state
  end

  resources :user_agent_black_lists do 
    patch :to_state
  end

  resources :comments do
    member do
      post   :to_spam
      post   :to_draft
      post   :to_published
      delete :to_deleted
    end

    collection do
      get :manage

      get :my_draft
      get :my_published

      get :total_draft
      get :total_published
      get :total_deleted
      get :total_spam

      get :draft
      get :published
      get :deleted
      get :spam
    end
  end
end