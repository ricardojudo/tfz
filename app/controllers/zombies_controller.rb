class ZombiesController < ApplicationController
  before_action :set_zombie , only:[:show,:edit,:update,:destroy]
  def new
    @zombie=Zombie.new
  end

  def show    
  end

  def create
    @zombie = Zombie.new(zombie_params)
    respond_to do |format|
      if @zombie.save
        format.html { redirect_to @zombie, notice: 'Zombie was successfully created.' }
        format.json { render :show, status: :created, location: @zombie }
      else
        format.html { render :new }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def edit    
  end

  def index
    @zombies = Zombie.all
  end

  def update
    respond_to do |format|
      if @zombie.update(zombie_params)
        format.html { redirect_to @zombie, notice: 'Zombie was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @zombie.destroy
    respond_to do |format|
      format.html { redirect_to zombies_url }
      format.json { head :no_content }
    end
  end

  private

  def set_zombie
    @zombie=Zombie.find(params[:id])
  end

  def zombie_params
    params.require(:zombie).permit(:name)
  end
end