class UsuariosController < ApplicationController
  before_filter :authenticate_usuario!, :except => [:index, :createUser]

  def index
    session[:return_to] ||= request.referer
    @usuarios = Usuario.find :all, :conditions => ["usuarios.empresa_id = ?",current_usuario.empresa_id] 
    respond_to do |format|  
      format.html # index.html.erb
      format.json { render :json => @usuarios }
    end
  end

  # GET /usuarios/1/edit
  def edit
    @usuario = Usuario.find(params[:id])
  end
 def new
    @usuario = Usuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @usuario }
    end
  end


  def create
    @usuario = Usuario.new(params[:usuario])
    respond_to do |format|
      if @usuario.save
        format.html { redirect_to usuarios_path, :notice => 'alloomorar was successfully created.' }
        format.json { render :json => @usuario, :status => :created, :location => @usuario }
      else
        format.html { render :action => "new" }
        format.json { render :json => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  def createUser
    respond_to do |format|
      format.html { redirect_to about_path, :notice => 'alloomorar was successfully created.' }
    end
  end


  
   # PUT /pins/1
  # PUT /pins/1.json
  def update
    @usuario = Usuario.find(params[:id])
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        format.html { redirect_to usuarios_path, :notice => 'Usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end
  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    respond_to do |format|
      format.html { redirect_to usuarios_path }
      format.json { head :no_content }
    end
  end

end
