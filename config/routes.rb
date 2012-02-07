CharitaBull::Application.routes.draw do
  resources :faq, :contact, :about, :welcome
  match "welcome/vote" => "welcome#vote"

  root :to => 'welcome#index'
end
