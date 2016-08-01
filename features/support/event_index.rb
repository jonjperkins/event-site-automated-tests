class EventIndex < SitePrism::Page
  set_url "/event_index"
  
  element :test_event, "a[href='/events/5']"


end