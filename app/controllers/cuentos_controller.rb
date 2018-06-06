class CuentosController < ApplicationController

  before_action :set_cuento, only: [:show, :edit, :update]

  def index
    @cuentos = Cuento.order('titulo ASC')
  end

  def create
    @cuento = Cuento.new(cuento_params)
    if @cuento.save
      redirect_to cuentos_path
    else
      render :new
    end
  end

  def new
    @cuento = Cuento.new
  end

  def edit
  end

  def show
  end

  def update
    if @cuento.update_attributes(cuento_params)
      redirect_to cuento_path(@cuento)
    else
      render :edit
    end
  end

  def destroy
  end

  def cuento_params
    params.require(:cuento).permit(:titulo, :autor, :nacionalidad, :region, :tipo, :editorial, :isbn, :archivo)
  end

  def set_cuento
    @cuento = Cuento.find(params[:id])
  end

end
