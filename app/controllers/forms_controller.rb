class FormsController < ApplicationController
  def index
    @forms = Form.order('id DESC').page(params[:page])
  end

  def show
    @form = Form.find(params[:id])
  end
end
