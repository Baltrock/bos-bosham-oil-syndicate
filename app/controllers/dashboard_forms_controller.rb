class DashboardFormsController < ApplicationController
  before_action :set_dashboard_form, only: %i[ show edit update destroy ]

  # GET /dashboard_forms or /dashboard_forms.json
  def index
    @dashboard_forms = DashboardForm.all
  end

  # GET /dashboard_forms/1 or /dashboard_forms/1.json
  def show
  end

  # GET /dashboard_forms/new
  def new
    @dashboard_form = DashboardForm.new
  end

  # GET /dashboard_forms/1/edit
  def edit
  end

  # POST /dashboard_forms or /dashboard_forms.json
  def create
    @dashboard_form = DashboardForm.new(dashboard_form_params)

    respond_to do |format|
      if @dashboard_form.save
        format.html { redirect_to dashboard_form_url(@dashboard_form), notice: "Dashboard form was successfully created." }
        format.json { render :show, status: :created, location: @dashboard_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboard_forms/1 or /dashboard_forms/1.json
  def update
    respond_to do |format|
      if @dashboard_form.update(dashboard_form_params)
        format.html { redirect_to dashboard_form_url(@dashboard_form), notice: "Dashboard form was successfully updated." }
        format.json { render :show, status: :ok, location: @dashboard_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboard_forms/1 or /dashboard_forms/1.json
  def destroy
    @dashboard_form.destroy

    respond_to do |format|
      format.html { redirect_to dashboard_forms_url, notice: "Dashboard form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard_form
      @dashboard_form = DashboardForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_form_params
      params.require(:dashboard_form).permit(:company_name, :address, :pounds_per_litre, :comment, :rating)
    end
end
