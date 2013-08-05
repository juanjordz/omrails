class FacturasController < ApplicationController
  before_filter :authenticate_usuario!, :except => :index

  def index
    @facturas = Factura.find :all, :joins => [:usuario], :conditions => ["usuarios.empresa_id = ?",current_usuario.empresa_id] 
    @nombreEmpresa = Empresa.find :all, :conditions => ["id = ?",current_usuario.empresa_id] 

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facturas }
    end
  end

  def ingresos
    @factura = Factura.new
    @nombreEmpresa = Empresa.find :all, :conditions => ["id = ?",current_usuario.empresa_id] 

    respond_to do |format|
      format.html # ingresos.html.erb
      format.json { render json: @factura }
    end
  end

  def egresos
    @factura = Factura.new
    @nombreEmpresa = Empresa.find :all, :conditions => ["id = ?",current_usuario.empresa_id] 

    respond_to do |format|
      format.html # ingresos.html.erb
      format.json { render json: @factura }
    end
  end

  def upload
    @factura = Factura.new
    @nombreEmpresa = Empresa.find :all, :conditions => ["id = ?",current_usuario.empresa_id] 

    respond_to do |format|
      format.html # ingresos.html.erb
      format.json { render json: @factura }
    end
  end
  # GET /facturas/1
  # GET /facturas/1.json
  def show
    @factura = Factura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @factura }
    end
  end

  # GET /facturas/new
  # GET /facturas/new.json
  def new
    @factura = Factura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @factura }
    end
  end

  # GET /facturas/1/edit
  def edit
    @factura = Factura.find(params[:id])
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = Factura.new(params[:factura])

    respond_to do |format|
      if @factura.save
        format.html { redirect_to @factura, notice: 'Factura was successfully created.' }
        format.json { render json: @factura, status: :created, location: @factura }
      else
        format.html { render action: "new" }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facturas/1
  # PUT /facturas/1.json
  def update
    @factura = Factura.find(params[:id])

    respond_to do |format|
      if @factura.update_attributes(params[:factura])
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura = Factura.find(params[:id])
    @factura.destroy

    respond_to do |format|
      format.html { redirect_to facturas_url }
      format.json { head :no_content }
    end
  end
end
