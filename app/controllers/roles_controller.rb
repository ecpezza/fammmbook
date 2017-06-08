class RolesController < ApplicationController
  def index
    @roles = Role.all

    render("roles/index.html.erb")
  end

  def show
    @role = Role.find(params[:id])

    render("roles/show.html.erb")
  end

  def new
    @role = Role.new

    render("roles/new.html.erb")
  end

  def create
    @role = Role.new

    @role.function_id = params[:function_id]
    @role.user_id = params[:user_id]
    @role.experience = params[:experience]
    @role.interest = params[:interest]

    save_status = @role.save

    if save_status == true
      redirect_to("/users/#{current_user.id}", :notice => "Function added successfully.")
    else
      render("roles/new.html.erb")
    end
  end

  def edit
    @role = Role.find(params[:id])

    render("roles/edit.html.erb")
  end

  def update
    @role = Role.find(params[:id])

    @role.function_id = params[:function_id]
    @role.user_id = params[:user_id]
    @role.experience = params[:experience]
    @role.interest = params[:interest]

    save_status = @role.save

    if save_status == true
      redirect_to("/users/#{current_user.id}", :notice => "Function updated successfully.")
    else
      render("roles/edit.html.erb")
    end
  end

  def destroy
    @role = Role.find(params[:id])

    @role.destroy

    if URI(request.referer).path == "/roles/#{@role.id}"
      redirect_to("/", :notice => "Role deleted.")
    else
      redirect_to(:back, :notice => "Role deleted.")
    end
  end
end
