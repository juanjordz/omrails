class CompanyController < ApplicationController
  def index
    @companys = Company.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @companys }
    end
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @company = Company.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @company }
    end
  end

  # GET /pins/new
  # GET /pins/new.json
  def new
    @company = Company.new
    session[:return_to] ||= request.referer
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @company }
    end
  end

  

  # GET /pins/1/edit
  def edit
    @company = current_user.Company.find(params[:id])
  end

  # POST /pins
  # POST /pins.json
  def create
    @company = Company.new(params[:company])
    

    respond_to do |format|
      if @company.save
        format.html { redirect_to session[:return_to], :notice => 'Pin was successfully created.' }
        format.json { render :json => @company, :status => :created, :location => @company }
      else
        format.html { render :action => "new" }
        format.json { render :json => @company, :status => :unprocessable_entity }
      end
    end
  end

  


  # PUT /pins/1
  # PUT /pins/1.json
  def update
    @company = Company.find(params[:id])
    respond_to do |format|
      if @company.update_attributes(params[:pin])
        format.html { redirect_to @company, :notice => 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    respond_to do |format|
      format.html { redirect_to pins_url }
      format.json { head :no_content }
    end
  end
end
