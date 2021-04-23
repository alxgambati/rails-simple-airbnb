class FlatsController < ApplicationController
  def index
    if params[:query].present?
      arel = Flat.arel_table
      @flats = Flat.where(arel[:name].matches("%#{params[:query]}%").or(arel[:description].matches("%#{params[:query]}%")))
    else
      @flats = Flat.all
    end
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(flat_params)

    respond_to do |format|
      if @flat.save
        format.html { redirect_to flats_path, notice: "flat was successfully created." }
        format.json { render :show, status: :created, location: @flat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flat.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :url)
  end
end
