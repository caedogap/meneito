Rails.application.routes.draw do
  resources :car_sales
  resources :sales_reports
  resources :car_models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
