class BarsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]


  # def search
  #   @bars = Bar.where(params[category: params[:category])
  #   @bar = Bar.where(name: params[:name])
  # end


  def index
    @bars = policy_scope(Bar)

    @query = params[:query]
       if params[:query].present?
         @bars = policy_scope(Bar).search_by_name_description_and_category(params[:query])
       else
         @bars = policy_scope(Bar)
       end

    # @bars = Bar.geocoded

    @markers = @bars.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bar: bar })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end

  end

  def new
    @bar = Bar.new
    authorize @bar
  end

  def create
    @bar = Bar.new(bar_params)
    authorize @bar
    @bar.user = current_user
    @bar.opening_days = params[:days].select {|k,v|v =='1'}.keys
    @bar.save!
    redirect_to bar_path(@bar)
  end

  def show
    @reservation = Reservation.new
    @bar = Bar.find(params[:id])
    authorize @bar
    # @bar = Bar.geocoded

    @marker =
      {
        lat: @bar.latitude,
        lng: @bar.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bar: @bar })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
  end

  def edit
    @bar = Bar.find(params[:id])
    authorize @bar
  end

  def update
    @bar = Bar.find(params[:id])
    @bar.update(bar_params)
    redirect_to bar_path(@bar)
    authorize @bar
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :description, :capacity, :address, :category, :opening_hours, :latitude, :longitude, :opening_days, :closing_hours, photos: [])
  end
end
