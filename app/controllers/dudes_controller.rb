class DudesController < ApplicationController
  # GET /dudes
  # GET /dudes.json
  def index
    @dudes = Dude.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dudes }
    end
  end

  # GET /dudes/1
  # GET /dudes/1.json
  def show
    @dude = Dude.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dude }
    end
  end

  # GET /dudes/new
  # GET /dudes/new.json
  def new
    @dude = Dude.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dude }
    end
  end

  # GET /dudes/1/edit
  def edit
    @dude = Dude.find(params[:id])
  end

  # POST /dudes
  # POST /dudes.json
  def create
    @dude = Dude.new(params[:dude])

    respond_to do |format|
      if @dude.save
        format.html { redirect_to @dude, notice: 'Dude was successfully created.' }
        format.json { render json: @dude, status: :created, location: @dude }
      else
        format.html { render action: "new" }
        format.json { render json: @dude.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dudes/1
  # PUT /dudes/1.json
  def update
    @dude = Dude.find(params[:id])

    respond_to do |format|
      if @dude.update_attributes(params[:dude])
        format.html { redirect_to @dude, notice: 'Dude was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dude.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dudes/1
  # DELETE /dudes/1.json
  def destroy
    @dude = Dude.find(params[:id])
    @dude.destroy

    respond_to do |format|
      format.html { redirect_to dudes_url }
      format.json { head :no_content }
    end
  end
end
