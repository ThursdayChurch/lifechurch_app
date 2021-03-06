class AboutsController < ApplicationController
 
 # load_and_authorize_resource :except => [:index, :home, :our_staff, :who_we_are,:privacy, :terms, :what_to_expect, :become_a_believer, :giving, :what_we_believe, :mission_method, :facility, :membership ]
#  before_filter :authenticate_user!, :except => [:index, :our_staff, :who_we_are, :privacy, :terms, :what_to_expect, :home, :become_a_believer, :giving, :what_we_believe, :mission_method, :facility, :membership ]
 
 layout "main_body_layout", :only => [  :our_staff, :who_we_are, :privacy, :terms, :what_to_expect,  :become_a_believer, :giving, :what_we_believe, :mission_method, :facility, :membership ]

  def home
    @today = DateTime.now.strftime("%Y-%m-%d")
    
     events = Event.where(:display_main_page => true).where("remove_event_date >= ?", @today).sample(5).shuffle 
     advertisements = Advertisement.where(:display_main_page => true).where("remove_advertisement_date >= ?", @today).sample(5).shuffle 
   
    @carousel_images = CarouselImage.order("random()").first(5).shuffle
   
   
     events_side_forced = Event.where(:display_main_page => true).where(:force_on_main_page => true)
     
     if events_side_forced.count >= 3
        @events_side = events_side_forced   
     else
        @events_side = Event.where(:display_main_page => true).where("remove_event_date >= ?", @today).order("event_type DESC").order("force_on_main_page DESC").limit(3).shuffle  #.order("highlight DESC")
     end
     
     
     @abouts = About.last
    
  end
  
  def our_staff
    
    @church_staffs = ChurchStaff.all
    
  end
  
  def who_we_are
    @abouts = About.last
    @service_times = ServiceTime.all
    @message = Message.new
    abouts = About.last
    # @json = abouts.to_gmaps4rails
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abouts }
    end
  end
  
  def mission_method  
  
  end  
  
  def what_we_believe 
    
     @summaries = Summary.all
  
  end
  
  def facility
    
  end
  
  def membership
    
  end
  
  def giving
    
  end
  
  def become_a_believer
    
  end
  
  def privacy
    
  end 
  
  def terms
    
  end
  
  def what_to_expect
    
  end
  


  # GET /abouts
  # GET /abouts.json
  def index
    
    @abouts = About.last
    @service_times = ServiceTime.all
    @message = Message.new
    abouts = About.last
     @json = abouts.to_gmaps4rails
     
    
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
    @about = About.last
    abouts = About.last
   #  @jsons = About.last.to_gmaps4rails
   # @json = About.all.to_gmaps4rails
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
    @about = About.last
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @message = Message.new(params[:message])

    if @message.valid?
       ContactMailer.site_message(@message).deliver
      redirect_to(abouts_path, :notice => "Your message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
  @about = About.last
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to @about, notice: 'General Info was successfully updated.'}
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

 
  private
 

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:service_day_1, :service_time_1, :service_day_2, :service_time_2, :service_day_3, :service_time_3, :address, :city, :postal_code, :phone_number, :toll_free_phone_number, :fax_number, :latitude, :longitude, :gmaps, :youtube, :facebook, :video_stream, :twitter, :country, :province, :life_pulse, :leaders_blog, :store, :video, :articles, :name, :slug)
    end
    
 
    def user_role
      current_user.try(:admin) ? :admin : (current_user.try(:user) ? :user : :reporting_user)
    end
end
