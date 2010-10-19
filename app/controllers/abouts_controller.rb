class AboutsController < ApplicationController
  before_filter :authorize, :except => 'show'
  # GET /abouts/1
  # GET /abouts/1.xml
  def show
    @about = About.last

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @about }
    end
  end

  # GET /abouts/new
  # GET /abouts/new.xml
  def new
    @about = About.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @about }
    end
  end

  # GET /abouts/1/edit
  def edit
    @about = About.last
  end

  # POST /abouts
  # POST /abouts.xml
  def create
    @about = About.new(params[:about])

    respond_to do |format|
      if @about.save
        format.html { redirect_to(about_path, :notice => 'About was successfully created.') }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @about.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /abouts/1
  # PUT /abouts/1.xml
  def update
    @about = About.last

    respond_to do |format|
      if @about.update_attributes(params[:about])
        format.html { redirect_to(about_path, :notice => 'About was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @about.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1
  # DELETE /abouts/1.xml
  def destroy
    @about = About.find(params[:id])
    @about.destroy

    respond_to do |format|
      format.html { redirect_to(abouts_url) }
      format.xml  { head :ok }
    end
  end
end
