class ButtonSection < SitePrism::Section
  element :all_events_button, "a[href='/event_index']"
  element :my_events_button, "a[href='/users/1']"
  element :sign_up_button, "a[href='/signup']"
  element :log_in_button, "a[href='/login']"
end

class Home < SitePrism::Page
  set_url "/"
  section :button_section, ButtonSection, "div.col-sm-4.col-sm-offset-4.text-center"
end