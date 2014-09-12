Rails.application.routes.draw do
  resources :videos

  resources :summaries

  resources :states

  resources :staff_ranks

  resources :speakers

  resources :speakers_pictures

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

  resources :announcements

  resources :abouts

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
