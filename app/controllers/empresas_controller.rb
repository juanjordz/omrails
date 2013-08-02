class EmpresasController < ApplicationController
  def index
    @empresas = Empresa.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @empresas }
    end
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    @empresa = Empresa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @empresa }
    end
  end

  # GET /pins/new
  # GET /pins/new.json
  def new
    @empresa = Empresa.new
    session[:return_to] ||= request.referer
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @empresa }
    end
  end

  

  # GET /pins/1/edit
  def edit
    @empresa = current_user.Empresa.find(params[:id])
  end

  # POST /pins
  # POST /pins.json
  def create
    @empresa = Empresa.new(params[:empresa])
    respond_to do |format|
      if @empresa.save
        session[:name] = params[:empresa][:name]
        format.html { redirect_to new_usuario_registration_path, :notice => 'blabla was successfully created.' }
        format.json { render :json => @empresa, :status => :created, :location => @empresa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @empresa, :status => :unprocessable_entity }
      end
    end
  end

  


  # PUT /pins/1
  # PUT /pins/1.json
  def update
    @empresa = Empresa.find(params[:id])
    respond_to do |format|
      if @empresa.update_attributes(params[:empresa])
        format.html { redirect_to @empresa, :notice => 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @empresa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.destroy

    respond_to do |format|
      format.html { redirect_to empresas_url }
      format.json { head :no_content }
    end
  end
end
