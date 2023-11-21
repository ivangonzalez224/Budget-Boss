class AcquisitionController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @acquisitions = CategoryAcquisition.where(category_id: params[:id]).includes(:acquisition).order(created_at: :desc)

    sum_amount = 0

    @acquisitions.each do |item|
      sum_amount += item.acquisition.amount
    end

    @category.update(sumamount: sum_amount)
  end
end
