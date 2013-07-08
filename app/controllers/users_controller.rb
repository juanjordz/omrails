class UsersController < ApplicationController
  before_filter :authenticate_user!, :except => :index



  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end
 def new
    @user = User.new
        session[:return_to] ||= request.referer

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @user }
    end
  end


  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to session[:return_to], :notice => 'user was successfully created.' }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end



  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  
   # PUT /pins/1
  # PUT /pins/1.json
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:pin])
        format.html { redirect_to @user, :notice => 'Pin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
end
