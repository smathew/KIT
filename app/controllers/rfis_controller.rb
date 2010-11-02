class RfisController < ApplicationController
  # GET /rfis
  # GET /rfis.xml
  def index
    @rfis = Rfi.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rfis }
    end
  end

  # GET /rfis/1
  # GET /rfis/1.xml
  def show
    @rfi = Rfi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rfi }
    end
  end

  # GET /rfis/new
  # GET /rfis/new.xml
  def new
    @rfi = Rfi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rfi }
    end
  end

  # GET /rfis/1/edit
  def edit
    @rfi = Rfi.find(params[:id])
  end

  # POST /rfis
  # POST /rfis.xml
  def create
    @rfi = Rfi.new(params[:rfi])

    respond_to do |format|
      if @rfi.save
        flash[:notice] = 'Request successfully sent to the Credit Union.'
		#send email
		Emailer.deliver_rfi_email(@rfi)
		Emailer.deliver_replytosender_email(@rfi.email_address)
        format.html { redirect_to(@rfi) }
        format.xml  { render :xml => @rfi, :status => :created, :location => @rfi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rfi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rfis/1
  # PUT /rfis/1.xml
  def update
    @rfi = Rfi.find(params[:id])

    respond_to do |format|
      if @rfi.update_attributes(params[:rfi])
        flash[:notice] = 'Rfi was successfully updated.'
        format.html { redirect_to(@rfi) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rfi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rfis/1
  # DELETE /rfis/1.xml
  def destroy
    @rfi = Rfi.find(params[:id])
    @rfi.destroy

    respond_to do |format|
      format.html { redirect_to(rfis_url) }
      format.xml  { head :ok }
    end
  end
end
