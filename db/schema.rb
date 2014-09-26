# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140926185859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: true do |t|
    t.string   "service_day_1"
    t.string   "service_time_1"
    t.string   "service_day_2"
    t.string   "service_time_2"
    t.string   "service_day_3"
    t.string   "service_time_3"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "phone_number"
    t.string   "toll_free_phone_number"
    t.string   "fax_number"
    t.float    "latitude"
    t.float    "longitude"
    t.boolean  "gmaps",                  default: false
    t.string   "youtube"
    t.string   "facebook"
    t.string   "video_stream"
    t.string   "twitter"
    t.string   "country"
    t.string   "province"
    t.boolean  "life_pulse",             default: false
    t.boolean  "leaders_blog",           default: false
    t.boolean  "store",                  default: false
    t.boolean  "video",                  default: false
    t.boolean  "articles",               default: false
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abouts", ["slug"], name: "index_abouts_on_slug", unique: true, using: :btree

  create_table "advertisements", force: true do |t|
    t.integer  "event_id"
    t.string   "advertisement_name"
    t.date     "advertisement_date"
    t.string   "advertisement_time"
    t.string   "contact_email"
    t.string   "location"
    t.string   "contact_person"
    t.text     "description"
    t.date     "remove_advertisement_date"
    t.boolean  "display_main_page"
    t.time     "advertisement_start_time"
    t.boolean  "use_form_button"
    t.integer  "which_form"
    t.string   "download_link"
    t.boolean  "share_download"
    t.boolean  "use_contact"
    t.string   "recurring_day"
    t.boolean  "recurring_on"
    t.boolean  "advertisement"
    t.string   "internal_link_url"
    t.boolean  "internal_link"
    t.boolean  "no_expiry"
    t.integer  "template_selected"
    t.boolean  "full_advertisement"
    t.integer  "advertisement_type"
    t.boolean  "force_on_main_page"
    t.boolean  "enable_disable_ad"
    t.text     "scheduled_when"
    t.text     "schedule"
    t.datetime "next_occurence"
    t.text     "options"
    t.string   "slug"
    t.boolean  "create_own_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "advertisements", ["slug"], name: "index_advertisements_on_slug", unique: true, using: :btree

  create_table "announcements", force: true do |t|
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.boolean  "green",      default: false
    t.string   "colours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "display_rank"
    t.text     "ta1"
    t.text     "ta2"
    t.text     "ta3"
    t.text     "ta4"
    t.text     "ta5"
    t.boolean  "advert_main_page", default: false
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true, using: :btree

  create_table "bulletins", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "display_till"
    t.date     "display_start"
    t.boolean  "advert_main_page", default: false
    t.string   "bulletin_image"
    t.string   "url"
    t.boolean  "members_only",     default: false
    t.boolean  "image_processed",  default: false
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bulletins", ["slug"], name: "index_bulletins_on_slug", unique: true, using: :btree

  create_table "carousel_images", force: true do |t|
    t.integer  "event_id"
    t.integer  "advertisement_id"
    t.string   "carousel_image_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "church_staffs", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "spouse_first_name"
    t.string   "title"
    t.date     "started_service"
    t.text     "description"
    t.string   "contact_email"
    t.string   "image"
    t.date     "birthday"
    t.string   "blog"
    t.string   "url"
    t.integer  "phone_ext"
    t.string   "phone_number"
    t.string   "full_name"
    t.string   "email_id"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google_plus"
    t.string   "linked_in"
    t.string   "birth_location"
    t.string   "category"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "church_staffs_pictures", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.integer  "church_staff_id"
    t.boolean  "image_processed", default: false
    t.string   "staff_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "egivings", force: true do |t|
    t.integer  "amount"
    t.boolean  "send_email_giver",                            default: false
    t.string   "email_of_giver"
    t.binary   "name_on_card"
    t.binary   "name_on_card_key"
    t.binary   "name_on_card_iv"
    t.binary   "card_number"
    t.binary   "card_number_key"
    t.binary   "card_number_iv"
    t.binary   "ccv_number"
    t.binary   "ccv_number_key"
    t.binary   "ccv_number_iv"
    t.binary   "date_month"
    t.binary   "date_month_key"
    t.binary   "date_month_iv"
    t.binary   "date_year"
    t.binary   "date_year_key"
    t.binary   "date_year_iv"
    t.string   "giving"
    t.integer  "year"
    t.string   "card_type"
    t.decimal  "amountfinal",         precision: 8, scale: 2
    t.string   "propose_of_donation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "country"
    t.string   "postal_code"
    t.string   "phone_number"
    t.float    "finalamount"
    t.integer  "giving_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "event_name"
    t.date     "event_date"
    t.string   "event_time"
    t.string   "contact_email"
    t.string   "location"
    t.string   "contact_person"
    t.text     "description"
    t.date     "remove_event_date"
    t.boolean  "display_main_page"
    t.time     "event_start_time"
    t.boolean  "use_form_button"
    t.integer  "which_form"
    t.string   "download_link"
    t.boolean  "share_download"
    t.boolean  "use_contact"
    t.string   "recurring_day"
    t.boolean  "recurring_on"
    t.boolean  "advertisement"
    t.string   "internal_link_url"
    t.boolean  "internal_link"
    t.boolean  "no_expiry"
    t.integer  "template_selected"
    t.boolean  "full_event"
    t.integer  "event_type"
    t.string   "summary"
    t.boolean  "force_on_main_page"
    t.boolean  "enable_disable_ad"
    t.boolean  "highlight"
    t.text     "scheduled_when"
    t.text     "schedule"
    t.datetime "next_occurence"
    t.text     "options"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "advertisement_id"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", unique: true, using: :btree

  create_table "events_forms", force: true do |t|
    t.integer  "event_setup_form_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "receive_emails"
    t.string   "email"
    t.string   "phone_number"
    t.text     "notes"
    t.string   "c_f_1_s"
    t.string   "c_f_2_s"
    t.string   "c_f_3_s"
    t.string   "c_f_4_s"
    t.boolean  "c_f_5_b",             default: false
    t.boolean  "c_f_6_b",             default: false
    t.boolean  "c_f_7_b",             default: false
    t.boolean  "c_f_8_b",             default: false
    t.text     "c_f_9_t"
    t.text     "c_f_10_t"
    t.text     "c_f_11_t"
    t.text     "c_f_12_t"
    t.integer  "age"
    t.date     "bday"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_pictures", force: true do |t|
    t.string   "title"
    t.string   "event_image"
    t.string   "linked_event"
    t.text     "description"
    t.integer  "event_id"
    t.string   "eventimage"
    t.boolean  "image_processed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "advertisement_id"
  end

  create_table "events_setup_forms", force: true do |t|
    t.integer  "event_id"
    t.string   "email_for_forms"
    t.string   "c_f_1"
    t.string   "c_f_2"
    t.string   "c_f_3"
    t.string   "c_f_4"
    t.string   "c_f_5"
    t.string   "c_f_6"
    t.string   "c_f_7"
    t.string   "c_f_8"
    t.string   "c_f_9"
    t.string   "c_f_10"
    t.string   "c_f_11"
    t.string   "c_f_12"
    t.boolean  "age"
    t.string   "c_f_1_h"
    t.string   "c_f_2_h"
    t.string   "c_f_3_h"
    t.string   "c_f_4_h"
    t.string   "c_f_5_h"
    t.string   "c_f_6_h"
    t.string   "c_f_7_h"
    t.string   "c_f_8_h"
    t.string   "c_f_9_h"
    t.string   "c_f_10_h"
    t.string   "c_f_11_h"
    t.string   "c_f_12_h"
    t.boolean  "phone"
    t.boolean  "note"
    t.boolean  "bday"
    t.boolean  "sex"
    t.boolean  "use_form"
    t.string   "down_link"
    t.boolean  "ok_to_contact"
    t.string   "form_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_pulses", force: true do |t|
    t.string   "keywords"
    t.boolean  "from_pastor_desk"
    t.integer  "template_selected"
    t.text     "content"
    t.string   "title"
    t.string   "summary"
    t.string   "flickr_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "life_pulses", ["slug"], name: "index_life_pulses_on_slug", unique: true, using: :btree

  create_table "life_pulses_pictures", force: true do |t|
    t.integer  "life_pulse_id"
    t.string   "life_pulse_image"
    t.string   "title"
    t.string   "summary"
    t.boolean  "image_processed"
    t.boolean  "main_page"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "life_pulses_stocks_pictures", force: true do |t|
    t.integer  "life_pulse_id"
    t.string   "life_pulse_image"
    t.string   "title"
    t.string   "summary"
    t.boolean  "image_processed"
    t.boolean  "main_page"
    t.string   "life_pulse_stock_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministries", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "display_rank"
    t.text     "ta1"
    t.text     "ta2"
    t.text     "ta3"
    t.text     "ta4"
    t.text     "ta5"
    t.boolean  "advert_main_page"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ministries", ["slug"], name: "index_ministries_on_slug", unique: true, using: :btree

  create_table "ministries_pictures", force: true do |t|
    t.string   "ministry_image"
    t.boolean  "image_processed", default: false
    t.integer  "ministries_id"
    t.integer  "ministry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministry_children", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "display_rank"
    t.text     "ta1"
    t.text     "ta2"
    t.text     "ta3"
    t.text     "ta4"
    t.text     "ta5"
    t.boolean  "advert_main_page"
    t.integer  "ministry_id"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ministry_children", ["slug"], name: "index_ministry_children_on_slug", unique: true, using: :btree

  create_table "ministry_children_pictures", force: true do |t|
    t.string   "ministrychild_image"
    t.boolean  "image_processed",     default: false
    t.integer  "ministrychild_id"
    t.integer  "ministry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: true do |t|
    t.string   "email_1"
    t.string   "email_2"
    t.boolean  "send_email_2", default: false
    t.boolean  "open_site",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "end_month"
    t.date     "start_month"
    t.string   "schedule_image"
    t.boolean  "image_processed", default: false
    t.string   "url"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["slug"], name: "index_schedules_on_slug", unique: true, using: :btree

  create_table "sermons", force: true do |t|
    t.date     "date_of_sermon"
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.string   "audio_url"
    t.string   "video_url"
    t.date     "display_until"
    t.integer  "speaker_id"
    t.boolean  "members_only",   default: false
    t.string   "url"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sermons", ["slug"], name: "index_sermons_on_slug", unique: true, using: :btree

  create_table "sermons_pictures", force: true do |t|
    t.string   "sermon_image"
    t.boolean  "image_processed", default: false
    t.integer  "sermons_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_times", force: true do |t|
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "service_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_setups", force: true do |t|
    t.string   "youtube"
    t.string   "facebook"
    t.string   "video_stream"
    t.string   "twitter"
    t.boolean  "life_pulse",   default: false
    t.boolean  "leaders_blog", default: false
    t.boolean  "store",        default: false
    t.boolean  "video",        default: false
    t.boolean  "articles",     default: false
    t.boolean  "shutdown",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speakers", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "from_church"
    t.text     "description"
    t.integer  "church_staff_id"
    t.string   "from_church_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
  end

  create_table "speakers_pictures", force: true do |t|
    t.string   "speaker_image"
    t.integer  "speaker_id"
    t.boolean  "image_processed", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_ranks", force: true do |t|
    t.integer  "ranking"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "abbrev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "summaries", force: true do |t|
    t.text     "what_we_believe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "postal_code"
    t.date     "birthday"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "gender"
    t.boolean  "yes_receive_email",      default: false
    t.string   "province"
    t.integer  "country_id"
    t.integer  "state_id"
    t.string   "country_selected"
    t.boolean  "edit_site",              default: false
    t.boolean  "approved",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.text     "description"
    t.integer  "display_rank"
    t.text     "ta1"
    t.text     "ta2"
    t.text     "ta3"
    t.text     "ta4"
    t.text     "ta5"
    t.boolean  "advert_main_page", default: false
    t.string   "title"
    t.string   "url"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["slug"], name: "index_videos_on_slug", unique: true, using: :btree

end
