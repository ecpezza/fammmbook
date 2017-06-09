class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    # @q = Company.ransack(params[:q])
    # @companyresults = @q.result(distinct: true)

    render("companies/index.html.erb")
  end

  def show
    @company = Company.find(params[:id])

    render("companies/show.html.erb")
  end

  def new
    @company = Company.new

    render("companies/new.html.erb")
  end

  def create
    @company = Company.new

    @company.company_name = params[:company_name]

    save_status = @company.save

    if save_status == true
      redirect_to("/users/#{current_user.id}", :notice => "Company added successfully.")
    else
      render("companies/new.html.erb")
    end
  end

  def edit
    @company = Company.find(params[:id])

    render("companies/edit.html.erb")
  end

  def update
    @company = Company.find(params[:id])

    @company.company_name = params[:company_name]

    save_status = @company.save

    if save_status == true
      redirect_to("/users/#{current_user.id}", :notice => "Company updated successfully.")
    else
      render("companies/edit.html.erb")
    end
  end

  def destroy
    @company = Company.find(params[:id])

    @company.destroy

    if URI(request.referer).path == "/companies/#{@company.id}"
      redirect_to("/", :notice => "Company deleted.")
    else
      redirect_to(:back, :notice => "Company deleted.")
    end
  end
end
