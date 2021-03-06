Rails.application.routes.draw do
  resources :pm2gitlab_settings, only: [] do
    get :get_data, on: :collection
    post :update_data, on: :collection
    post :update_common_data, on: :collection
  end

  post '/pm2gitlab/merge_request', controller: :incoming_hooks, action: :merge_request
end
