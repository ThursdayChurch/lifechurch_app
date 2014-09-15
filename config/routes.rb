Rails.application.routes.draw do
  resources :videos

  resources :summaries

  resources :states

  resources :staff_ranks

  resources :speakers

  resources :speakers_pictures

  get "site_setups/site_setup"
  
  
  resources :site_setups

  resources :service_times

  resources :sermons

  resources :sermons_pictures

  resources :schedules

  resources :notifications

  resources :ministries_pictures

  resources :ministry_children_pictures

  resources :ministry_children

  resources :ministries

  resources :life_pulses

  resources :life_pulses_stocks_pictures

  resources :life_pulses_pictures


  get "events/events"
  get "events/advertisment"
  get "events/calendar_only"
  get 'learn_more/:id' => 'events#learn_more', :as => 'learn_more'

  resources :events

  resources :events_setup_forms

  resources :events_pictures

  resources :events_forms

  resources :egivings

  resources :countries

  resources :church_staffs

  resources :church_staffs_pictures


  resources :bulletins

  resources :articles

  match 'announcements/:id/hide', to: 'announcements#hide', :via => :get
  resources :announcements

  root :to => 'abouts#home'
  
 post 'abouts/contact' 

    
  resources :abouts, :path => '' do
    collection do
     
      get "mission_method" 
      get "what_we_believe"
      get "facility"
      get "membership"
      get "giving"
      get "become_a_believer"
      get "terms"
      get "privacy"
      get "what_to_expect"
      get "who_we_are"
      get "our_staff"
     
    end
    
  end

  match 'contact_event' => 'contact_event#new', :via => :get
  match 'contact_event' => 'contact_event#create', :via => :post
 

  match 'contact_staff' => 'contact_staff#new', :via => :get
  match 'contact_staff' => 'contact_staff#create',  :via => :post  

  match 'contact_tech' => 'contact_tech#new',  :via => :get
  match 'contact_tech' => 'contact_tech#create',  :via => :post
  
  match 'contact' => 'contact#new',  :via => :get
  match 'contact' => 'contact#create', :via => :post

 
  
  match "users/approve" => 'users#approve',  :via => :get
  get "users/edit_site"
  devise_for :users
  resources :users
end
