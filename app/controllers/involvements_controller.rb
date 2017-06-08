class InvolvementsController < ApplicationController
  def index
    @involvements = Involvement.all

    render("involvements/index.html.erb")
  end

  def show
    @involvement = Involvement.find(params[:id])

    render("involvements/show.html.erb")
  end

  def new
    @involvement = Involvement.new

    render("involvements/new.html.erb")
  end

  def create
    @involvement = Involvement.new

    @involvement.industry_id = params[:industry_id]
    @involvement.user_id = params[:user_id]
    @involvement.experience = params[:experience]
    @involvement.interest = params[:interest]

    save_status = @involvement.save

    if save_status == true
      redirect_to("/involvements/#{@involvement.id}", :notice => "Involvement created successfully.")
    else
      render("involvements/new.html.erb")
    end
  end

  def edit
    @involvement = Involvement.find(params[:id])

    render("involvements/edit.html.erb")
  end

  def update
    @involvement = Involvement.find(params[:id])

    @involvement.industry_id = params[:industry_id]
    @involvement.user_id = params[:user_id]
    @involvement.experience = params[:experience]
    @involvement.interest = params[:interest]

    save_status = @involvement.save

    if save_status == true
      redirect_to("/involvements/#{@involvement.id}", :notice => "Involvement updated successfully.")
    else
      render("involvements/edit.html.erb")
    end
  end

  def destroy
    @involvement = Involvement.find(params[:id])

    @involvement.destroy

    if URI(request.referer).path == "/involvements/#{@involvement.id}"
      redirect_to("/", :notice => "Involvement deleted.")
    else
      redirect_to(:back, :notice => "Involvement deleted.")
    end
  end
end
