class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]
  before_action :admin_only, only: %i[ new edit show update destroy ]
  before_action :set_service_categories

  # GET /services or /services.json
  def index
    @services = Service.all.order(:price)
  end

  # GET /services/1 or /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services or /services.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: "Service was successfully created." }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1 or /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path, notice: "Service was successfully updated." }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    @service.destroy!

    respond_to do |format|
      format.html { redirect_to services_url, notice: "Service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Check if user is admin
    def admin_only
      if !current_user || current_user.role != "admin"
        redirect_to root_path
        flash[:alert] = "You are not authorized to perform this action."
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :description, :image, :price, :quart, :service_category_id, :upto_quarts)
    end

    # Sets the `@service_categories` instance variable to a collection of all `ServiceCategory` objects,
    # ordered by their `id` in ascending order.
    def set_service_categories
      @service_categories = ServiceCategory.all.order(:id)
    end
end
