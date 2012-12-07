class ExurasController < ApplicationController
  # GET /exuras

  # GET /exuras.json
  def index
    @exuras = Exura.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @exuras }
    end
  end

  # GET /exuras/1
  # GET /exuras/1.json
  def show
    @exura = Exura.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @exura }
    end
  end

  # GET /exuras/new
  # GET /exuras/new.json
  def new
    @exura = Exura.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @exura }
    end
  end

  # GET /exuras/1/edit
  def edit
    @exura = Exura.find(params[:id])
  end

  # POST /exuras
  # POST /exuras.json
  def create
    @exura = Exura.new(params[:exura])

    respond_to do |format|
      if @exura.save
        format.html { redirect_to @exura, :notice => 'Exura was successfully created.' }
        format.json { render :json => @exura, :status => :created, :location => @exura }
      else
        format.html { render :action => "new" }
        format.json { render :json => @exura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exuras/1
  # PUT /exuras/1.json
  def update
    @exura = Exura.find(params[:id])

    respond_to do |format|
      if @exura.update_attributes(params[:exura])
        format.html { redirect_to @exura, :notice => 'Exura was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @exura.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exuras/1
  # DELETE /exuras/1.json
  def destroy
    @exura = Exura.find(params[:id])
    @exura.destroy

    respond_to do |format|
      format.html { redirect_to exuras_url }
      format.json { head :no_content }
    end
  end
end
