Rails.application.routes.draw do
  # Routes for the Involvement resource:
  # CREATE
  get "/involvements/new", :controller => "involvements", :action => "new"
  post "/create_involvement", :controller => "involvements", :action => "create"

  # READ
  get "/involvements", :controller => "involvements", :action => "index"
  get "/involvements/:id", :controller => "involvements", :action => "show"

  # UPDATE
  get "/involvements/:id/edit", :controller => "involvements", :action => "edit"
  post "/update_involvement/:id", :controller => "involvements", :action => "update"

  # DELETE
  get "/delete_involvement/:id", :controller => "involvements", :action => "destroy"
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get "/roles/new", :controller => "roles", :action => "new"
  post "/create_role", :controller => "roles", :action => "create"

  # READ
  get "/roles", :controller => "roles", :action => "index"
  get "/roles/:id", :controller => "roles", :action => "show"

  # UPDATE
  get "/roles/:id/edit", :controller => "roles", :action => "edit"
  post "/update_role/:id", :controller => "roles", :action => "update"

  # DELETE
  get "/delete_role/:id", :controller => "roles", :action => "destroy"
  #------------------------------

  # Routes for the Degree resource:
  # CREATE
  get "/degrees/new", :controller => "degrees", :action => "new"
  post "/create_degree", :controller => "degrees", :action => "create"

  # READ
  get "/degrees", :controller => "degrees", :action => "index"
  get "/degrees/:id", :controller => "degrees", :action => "show"

  # UPDATE
  get "/degrees/:id/edit", :controller => "degrees", :action => "edit"
  post "/update_degree/:id", :controller => "degrees", :action => "update"

  # DELETE
  get "/delete_degree/:id", :controller => "degrees", :action => "destroy"
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get "/jobs/new", :controller => "jobs", :action => "new"
  post "/create_job", :controller => "jobs", :action => "create"

  # READ
  get "/jobs", :controller => "jobs", :action => "index"
  get "/jobs/:id", :controller => "jobs", :action => "show"

  # UPDATE
  get "/jobs/:id/edit", :controller => "jobs", :action => "edit"
  post "/update_job/:id", :controller => "jobs", :action => "update"

  # DELETE
  get "/delete_job/:id", :controller => "jobs", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: "users#index"


# CREATE --> done through devise but can I still create a profile like this?


# READ
get "/users", :controller => "users", :action => "index"
get "/users/:id", :controller => "users", :action => "show"

# UPDATE
get "/users/:id/edit", :controller => "users", :action => "edit"
post "/update_user/:id", :controller => "users", :action => "update"

# DELETE --> done thorugh devise
end
