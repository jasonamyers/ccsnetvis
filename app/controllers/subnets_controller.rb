class SubnetsController < ApplicationController
  # GET /subnets
  # GET /subnets.json
  def index
    @subnets = Subnet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subnets }
    end
  end

  # GET /subnets/1
  # GET /subnets/1.json
  def show
    @subnet = Subnet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subnet }
    end
  end

  # GET /subnets/new
  # GET /subnets/new.json
  def new
    @subnet = Subnet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subnet }
    end
  end

  # GET /subnets/1/edit
  def edit
    @subnet = Subnet.find(params[:id])
  end

  # POST /subnets
  # POST /subnets.json
  def create
    @subnet = Subnet.new(params[:subnet])

    respond_to do |format|
      if @subnet.save
        format.html { redirect_to @subnet, notice: 'Subnet was successfully created.' }
        format.json { render json: @subnet, status: :created, location: @subnet }
      else
        format.html { render action: "new" }
        format.json { render json: @subnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subnets/1
  # PUT /subnets/1.json
  def update
    @subnet = Subnet.find(params[:id])

    respond_to do |format|
      if @subnet.update_attributes(params[:subnet])
        format.html { redirect_to @subnet, notice: 'Subnet was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @subnet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subnets/1
  # DELETE /subnets/1.json
  def destroy
    @subnet = Subnet.find(params[:id])
    @subnet.destroy

    respond_to do |format|
      format.html { redirect_to subnets_url }
      format.json { head :ok }
    end
  end
end
