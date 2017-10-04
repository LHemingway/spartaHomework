Rails.application.routes.draw do
  devise_for :users, path: "u"
  resources :bands, module: :users

	root "bands#index"
end
