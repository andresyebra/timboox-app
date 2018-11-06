Rails.application.routes.draw do

  #  User Custom Routes
  get 'user/:id', :to => 'user#index', as: 'profile'
  post 'user/getUserbyEmail' , as: 'email_register'
  post 'user/getUserbyRfc' , as: 'rfc_register'

  # Offices Routes
  get 'office/index' , as: 'offices'
  get 'office/:id' , :to => 'office#get'
  post 'office/delete' , as: 'deleted_office'
  post 'office/new' , as: 'new_offices'

  # Employees Routes
  get 'employee/index', as: 'employees'
  get 'employee/:id' , :to => 'employee#get'
  post 'employee/delete' , as: 'deleted_employee'
  post 'employee/new' , as: 'new_employees'

  # Devise Routes
  devise_for :users

  # Home Routes
  get 'welcome/index'
  root 'welcome#index'

end
