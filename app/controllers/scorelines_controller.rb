
class ScorelinesController < ApplicationController
  # GET /scorelines
  # GET /scorelines.json
  def index
    @scorelines = Scoreline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scorelines }
    end
  end

  # GET /scorelines/1
  # GET /scorelines/1.json
  def show
    @scoreline = Scoreline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scoreline }
    end
  end

  # GET /scorelines/new
  # GET /scorelines/new.json
  def new
    @scoreline = Scoreline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scoreline }
    end
  end

  # GET /scorelines/1/edit
  def edit
    @scoreline = Scoreline.find(params[:id])
  end

  # POST /scorelines
  # POST /scorelines.json
  def create
    @scoreline = Scoreline.new(params[:scoreline])

    respond_to do |format|
      if @scoreline.save
        format.html { redirect_to @scoreline, notice: 'Scoreline was successfully created.' }
        format.json { render json: @scoreline, status: :created, location: @scoreline }
      else
        format.html { render action: "new" }
        format.json { render json: @scoreline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scorelines/1
  # PUT /scorelines/1.json
  def update
    @scoreline = Scoreline.find(params[:id])

    respond_to do |format|
      if @scoreline.update_attributes(params[:scoreline])
        format.html { redirect_to @scoreline, notice: 'Scoreline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scoreline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scorelines/1
  # DELETE /scorelines/1.json
  def destroy
    @scoreline = Scoreline.find(params[:id])
    @scoreline.destroy

    respond_to do |format|
      format.html { redirect_to scorelines_url }
      format.json { head :no_content }
    end
  end
end
