class SellsController < ApplicationController
  # GET /sells
  # GET /sells.xml
  def index
    @sells = Sell.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sells }
    end
  end

  # GET /sells/1
  # GET /sells/1.xml
  def show
    @sell = Sell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sell }
    end
  end

  # GET /sells/new
  # GET /sells/new.xml
  def new
    @sell = Sell.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sell }
    end
  end

  # GET /sells/1/edit
  def edit
    @sell = Sell.find(params[:id])
  end

  # POST /sells
  # POST /sells.xml
  def create
    @sell = Sell.new(params[:sell])

    respond_to do |format|
      if @sell.save
        format.html { redirect_to(@sell, :notice => 'Sell was successfully created.') }
        format.xml  { render :xml => @sell, :status => :created, :location => @sell }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sell.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sells/1
  # PUT /sells/1.xml
  def update
    @sell = Sell.find(params[:id])

    respond_to do |format|
      if @sell.update_attributes(params[:sell])
        format.html { redirect_to(@sell, :notice => 'Sell was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sell.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sells/1
  # DELETE /sells/1.xml
  def destroy
    @sell = Sell.find(params[:id])
    @sell.destroy

    respond_to do |format|
      format.html { redirect_to(sells_url) }
      format.xml  { head :ok }
    end
  end
end
