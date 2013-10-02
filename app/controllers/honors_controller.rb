class HonorsController < ApplicationController
  # GET /honors
  # GET /honors.json
  def index
    @honors = Honor.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @honors }
    end
  end

  # GET /honors/1
  # GET /honors/1.json
  def show
    @honor = Honor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @honor }
    end
  end

  # GET /honors/new
  # GET /honors/new.json
  def new
    @honor = Honor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @honor }
    end
  end

  # GET /honors/1/edit
  def edit
    @honor = Honor.find(params[:id])
  end

  # POST /honors
  # POST /honors.json
  def create
    @honor = Honor.new(params[:honor])

    respond_to do |format|
      if @honor.save
        format.html { redirect_to @honor, notice: 'Honor was successfully created.' }
        format.json { render json: @honor, status: :created, location: @honor }
      else
        format.html { render action: "new" }
        format.json { render json: @honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /honors/1
  # PUT /honors/1.json
  def update
    @honor = Honor.find(params[:id])

    respond_to do |format|
      if @honor.update_attributes(params[:honor])
        format.html { redirect_to @honor, notice: 'Honor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @honor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /honors/1
  # DELETE /honors/1.json
  def destroy
    @honor = Honor.find(params[:id])
    @honor.destroy

    respond_to do |format|
      format.html { redirect_to honors_url }
      format.json { head :no_content }
    end
  end
end
