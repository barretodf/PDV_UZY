class SalesController < ApplicationController
  before_action :authenticate_user!

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.user = current_user
    @sale.sale_date = Time.current
    @sale.status = "completed"

    if @sale.save
      redirect_to root_path, notice: "Venda criada com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:customer_id, :total)
  end
end
