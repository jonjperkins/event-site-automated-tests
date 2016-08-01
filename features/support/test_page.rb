class TestPage < SitePrism::Page
  set_url "/events/5"
  element :attend_event_button, "input[value='Attend this Event']"
  element :leave_event_button, "input[value='Leave event']"



end