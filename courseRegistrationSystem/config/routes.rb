Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :students, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'students/index'
  get 'students/all_courses'
  get 'students/registered_courses'
  get 'students/semister'
  get 'students/semister_r'
  get 'students/semister_result/:id' => "students#semister_result"
  get 'students/semister_courses/:id' => "students#semister_courses"
  get 'students/register_course' => "students#register_course"

  get 'students/search'
  get 'students/search_result' => "students#search_result"

  root to: "students#semister"
end
