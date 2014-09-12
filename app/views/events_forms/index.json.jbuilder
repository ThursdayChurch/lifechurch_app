json.array!(@events_forms) do |events_form|
  json.extract! events_form, :id, :event_setup_form_id, :first_name, :last_name, :receive_emails, :email, :phone_number, :notes, :c_f_1_s, :c_f_2_s, :c_f_3_s, :c_f_4_s, :c_f_5_b, :c_f_6_b, :c_f_7_b, :c_f_8_b, :c_f_9_t, :c_f_10_t, :c_f_11_t, :c_f_12_t, :age, :bday, :sex
  json.url events_form_url(events_form, format: :json)
end
