Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: "users/sessions" }
  devise_for :models
  root to: "home#index"
end
