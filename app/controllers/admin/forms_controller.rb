class Admin::FormsController < AdminController
  before_action :set_admin_form, only: [:show, :edit, :update, :destroy]

  # GET /admin/forms
  # GET /admin/forms.json
  def index
    @admin_forms = Admin::Form.all.order('id DESC').page(params[:page])
  end

  # GET /admin/forms/1
  # GET /admin/forms/1.json
  def show
  end

  # GET /admin/forms/new
  def new
    @admin_form = Admin::Form.new
  end

  # GET /admin/forms/1/edit
  def edit
  end

  # POST /admin/forms
  # POST /admin/forms.json
  def create
    @admin_form = Admin::Form.new(admin_form_params)

    respond_to do |format|
      if @admin_form.save
        format.html { redirect_to @admin_form, notice: t('crud.created_successfully!', name: Admin::Form.model_name.human) }
        format.json { render :show, status: :created, location: @admin_form }
      else
        format.html { render :new }
        format.json { render json: @admin_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/forms/1
  # PATCH/PUT /admin/forms/1.json
  def update
    respond_to do |format|
      if @admin_form.update(admin_form_params)
        format.html { redirect_to @admin_form, notice: t('crud.updated_successfully!', name: Admin::Form.model_name.human) }
        format.json { render :show, status: :ok, location: @admin_form }
      else
        format.html { render :edit }
        format.json { render json: @admin_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/forms/1
  # DELETE /admin/forms/1.json
  def destroy
    @admin_form.destroy
    respond_to do |format|
      format.html { redirect_to admin_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_form
      @admin_form = Admin::Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_form_params
      params
        .require(:admin_form)
        .permit(
          :title, :description,
          fields_attributes: %i[name type required multiple options]
        )
    end
end
