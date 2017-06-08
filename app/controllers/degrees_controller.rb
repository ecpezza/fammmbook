class DegreesController < ApplicationController
  def index
    @degrees = Degree.all

    render("degrees/index.html.erb")
  end

  def show
    @degree = Degree.find(params[:id])

    render("degrees/show.html.erb")
  end

  def new
    @degree = Degree.new

    render("degrees/new.html.erb")
  end

  def create
    @degree = Degree.new

    @degree.school_id = params[:school_id]
    @degree.user_id = params[:user_id]
    @degree.degree = params[:degree]
    @degree.grad_year = params[:grad_year]

    save_status = @degree.save

    if save_status == true
      redirect_to("/degrees/#{@degree.id}", :notice => "Degree created successfully.")
    else
      render("degrees/new.html.erb")
    end
  end

  def edit
    @degree = Degree.find(params[:id])

    render("degrees/edit.html.erb")
  end

  def update
    @degree = Degree.find(params[:id])

    @degree.school_id = params[:school_id]
    @degree.user_id = params[:user_id]
    @degree.degree = params[:degree]
    @degree.grad_year = params[:grad_year]

    save_status = @degree.save

    if save_status == true
      redirect_to("/degrees/#{@degree.id}", :notice => "Degree updated successfully.")
    else
      render("degrees/edit.html.erb")
    end
  end

  def destroy
    @degree = Degree.find(params[:id])

    @degree.destroy

    if URI(request.referer).path == "/degrees/#{@degree.id}"
      redirect_to("/", :notice => "Degree deleted.")
    else
      redirect_to(:back, :notice => "Degree deleted.")
    end
  end
end
