Rails.application.routes.draw do
get "students", to: "students#index"
get "students/:id/activate", to: "students#activate", as: "activate_student"
get "students/:id", to: "students#show", as: "student"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
