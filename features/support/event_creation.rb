class EventCreation < SitePrism::Page

  set_url "/create_event"

  element :event_title, '#event_title'
  element :event_description, '#event_description'
  element :event_location, '#event_location'
  element :event_date, '#event_event_date'
  element :event_time, '#event_event_time'
  element :create_button, "input[name='commit']"

  def create_event_without_time
  	self.event_title.set 'Test Event'
  	self.event_description.set 'Test Description'
  	self.event_location.set 'Test Location'
  	self.event_date.set '12/30/2017'
   	self.create_button.click
  end

end