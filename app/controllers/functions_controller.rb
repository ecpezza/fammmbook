class FunctionsController < ApplicationController
  def index
    @functions = Function.all

    render("functions/index.html.erb")
  end

  def show
    @function = Function.find(params[:id])

    render("functions/show.html.erb")
  end

  def new
    @function = Function.new

    render("functions/new.html.erb")
  end

  def create
    @function = Function.new

    @function.function_name = params[:function_name]

    save_status = @function.save

    if save_status == true
      redirect_to("/functions", :notice => "Function created successfully.")
    else
      render("functions/new.html.erb")
    end
  end

  def edit
    @function = Function.find(params[:id])

    render("functions/edit.html.erb")
  end

  def update
    @function = Function.find(params[:id])

    @function.function_name = params[:function_name]

    save_status = @function.save

    if save_status == true
      redirect_to("/functions", :notice => "Function updated successfully.")
    else
      render("functions/edit.html.erb")
    end
  end

  def destroy
    @function = Function.find(params[:id])

    @function.destroy

    if URI(request.referer).path == "/functions/#{@function.id}"
      redirect_to("/", :notice => "Function deleted.")
    else
      redirect_to(:back, :notice => "Function deleted.")
    end
  end
end
