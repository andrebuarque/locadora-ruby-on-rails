class TestesController < ApplicationController
  before_action :set_teste, only: [:show, :edit, :update, :destroy]

  def index
    @testes = Teste.all
    respond_with(@testes)
  end

  def show
    respond_with(@teste)
  end

  def new
    @teste = Teste.new
    respond_with(@teste)
  end

  def edit
  end

  def create
    @teste = Teste.new(teste_params)
    @testis.save
    respond_with(@teste)
  end

  def update
    @testis.update(teste_params)
    respond_with(@teste)
  end

  def destroy
    @testis.destroy
    respond_with(@teste)
  end

  private
    def set_teste
      @teste = Teste.find(params[:id])
    end

    def teste_params
      params.require(:teste).permit(:name)
    end
end
