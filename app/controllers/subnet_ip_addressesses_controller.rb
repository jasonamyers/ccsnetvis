class SubnetIpAddressessesController < ApplicationController
  # GET /subnet_ip_addressesses
  # GET /subnet_ip_addressesses.json
  def index
    @subnet_ip_addressesses = SubnetIpAddressess.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subnet_ip_addressesses }
    end
  end

  # GET /subnet_ip_addressesses/1
  # GET /subnet_ip_addressesses/1.json
  def show
    @subnet_ip_addressess = SubnetIpAddressess.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subnet_ip_addressess }
    end
  end

  # GET /subnet_ip_addressesses/new
  # GET /subnet_ip_addressesses/new.json
  def new
    @subnet_ip_addressess = SubnetIpAddressess.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subnet_ip_addressess }
    end
  end

  # GET /subnet_ip_addressesses/1/edit
  def edit
    @subnet_ip_addressess = SubnetIpAddressess.find(params[:id])
  end

  # POST /subnet_ip_addressesses
  # POST /subnet_ip_addressesses.json
  def create
    @subnet_ip_addressess = SubnetIpAddressess.new(params[:subnet_ip_addressess])

    respond_to do |format|
      if @subnet_ip_addressess.save
        format.html { redirect_to @subnet_ip_addressess, notice: 'Subnet ip addressess was successfully created.' }
        format.json { render json: @subnet_ip_addressess, status: :created, location: @subnet_ip_addressess }
      else
        format.html { render action: "new" }
        format.json { render json: @subnet_ip_addressess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subnet_ip_addressesses/1
  # PUT /subnet_ip_addressesses/1.json
  def update
    @subnet_ip_addressess = SubnetIpAddressess.find(params[:id])

    respond_to do |format|
      if @subnet_ip_addressess.update_attributes(params[:subnet_ip_addressess])
        format.html { redirect_to @subnet_ip_addressess, notice: 'Subnet ip addressess was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subnet_ip_addressess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subnet_ip_addressesses/1
  # DELETE /subnet_ip_addressesses/1.json
  def destroy
    @subnet_ip_addressess = SubnetIpAddressess.find(params[:id])
    @subnet_ip_addressess.destroy

    respond_to do |format|
      format.html { redirect_to subnet_ip_addressesses_url }
      format.json { head :ok }
    end
  end
end
