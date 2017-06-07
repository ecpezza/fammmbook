class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end

  def update
    @user = User.find(params[:id])

    @user.email = params[:email]

    save_status = @user.save

    if save_status == true
      redirect_to("/users/#{@user.id}", :notice => "Profile updated successfully.")
    else
      render("users/edit.html.erb")
    end
  end

end
