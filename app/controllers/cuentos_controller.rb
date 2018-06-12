class CuentosController < ApplicationController

  before_action :set_cuento, only: [:show, :edit, :update]

  def index
    # puts "===============cuento index================="
    @cuentos = Cuento.order('titulo ASC')
  end

  def create
    # puts "===============cuento create================="
    @cuento = Cuento.new(cuento_params)
    # puts "cuento params = #{cuento_params}"

    if @cuento.save
      redirect_to cuentos_path
    else
      render :new
    end
  end

  def new
    # puts "===============cuento new================="
    @cuento = Cuento.new
    tipos = Tipo.all
    subtipos = Subtipo.where("tipo_id = ?", Tipo.first.id)
    @tipos_options = tipos.collect { |tipo|[tipo.nombre, tipo.id] }
    @subtipos_options = subtipos.collect { |subtipo|[subtipo.nombre, subtipo.id] }
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
    params.require(:cuento).permit(:titulo, :autor, :nacionalidad, :region, :tipo_id, :subtipo_id, :editorial, :isbn, :personaje, :tema, :version, :archivo)
  end

  def set_cuento
    @cuento = Cuento.find(params[:id])
  end

end
