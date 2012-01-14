class SubnetIpaddressesController < ApplicationController
  # GET /subnet_ipaddresses
  # GET /subnet_ipaddresses.json
  def index
    @subnet_ipaddresses = SubnetIpaddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subnet_ipaddresses }
    end
  end

  # GET /subnet_ipaddresses/1
  # GET /subnet_ipaddresses/1.json
  def show
    @subnet_ipaddress = SubnetIpaddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subnet_ipaddress }
    end
  end

  # GET /subnet_ipaddresses/new
  # GET /subnet_ipaddresses/new.json
  def new
    @subnet_ipaddress = SubnetIpaddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subnet_ipaddress }
    end
  end

  # GET /subnet_ipaddresses/1/edit
  def edit
    @subnet_ipaddress = SubnetIpaddress.find(params[:id])
  end

  # POST /subnet_ipaddresses
  # POST /subnet_ipaddresses.json
  def create
    @subnet_ipaddress = SubnetIpaddress.new(params[:subnet_ipaddress])

    respond_to do |format|
      if @subnet_ipaddress.save
        format.html { redirect_to @subnet_ipaddress, notice: 'Subnet ipaddress was successfully created.' }
        format.json { render json: @subnet_ipaddress, status: :created, location: @subnet_ipaddress }
      else
        format.html { render action: "new" }
        format.json { render json: @subnet_ipaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subnet_ipaddresses/1
  # PUT /subnet_ipaddresses/1.json
  def update
    @subnet_ipaddress = SubnetIpaddress.find(params[:id])

    respond_to do |format|
      if @subnet_ipaddress.update_attributes(params[:subnet_ipaddress])
        format.html { redirect_to @subnet_ipaddress, notice: 'Subnet ipaddress was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subnet_ipaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subnet_ipaddresses/1
  # DELETE /subnet_ipaddresses/1.json
  def destroy
    @subnet_ipaddress = SubnetIpaddress.find(params[:id])
    @subnet_ipaddress.destroy

    respond_to do |format|
      format.html { redirect_to subnet_ipaddresses_url }
      format.json { head :ok }
    end
  end
end
