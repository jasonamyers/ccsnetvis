class SiteContactsController < ApplicationController
  # GET /site_contacts
  # GET /site_contacts.json
  def index
    @site_contacts = SiteContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_contacts }
    end
  end

  # GET /site_contacts/1
  # GET /site_contacts/1.json
  def show
    @site_contact = SiteContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_contact }
    end
  end

  # GET /site_contacts/new
  # GET /site_contacts/new.json
  def new
    @site_contact = SiteContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_contact }
    end
  end

  # GET /site_contacts/1/edit
  def edit
    @site_contact = SiteContact.find(params[:id])
  end

  # POST /site_contacts
  # POST /site_contacts.json
  def create
    @site_contact = SiteContact.new(params[:site_contact])

    respond_to do |format|
      if @site_contact.save
        format.html { redirect_to @site_contact, notice: 'Site contact was successfully created.' }
        format.json { render json: @site_contact, status: :created, location: @site_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @site_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /site_contacts/1
  # PUT /site_contacts/1.json
  def update
    @site_contact = SiteContact.find(params[:id])

    respond_to do |format|
      if @site_contact.update_attributes(params[:site_contact])
        format.html { redirect_to @site_contact, notice: 'Site contact was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_contacts/1
  # DELETE /site_contacts/1.json
  def destroy
    @site_contact = SiteContact.find(params[:id])
    @site_contact.destroy

    respond_to do |format|
      format.html { redirect_to site_contacts_url }
      format.json { head :ok }
    end
  end
end
