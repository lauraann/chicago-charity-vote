CharitaBull::Application.routes.draw do
  resources :faq
  resources :contact
  resources :about

  root :to => 'welcome#index'
end
