Rails.application.routes.draw do
  root to: "students#index"
  get 'students' => "students#index"
  get 'students/new' => "students#new"
  post 'students' => 'students#create'
  get "students/edit/:id" => 'students#edit'
  get "students/:id" => 'students#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
