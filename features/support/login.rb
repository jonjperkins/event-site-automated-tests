class Login < SitePrism::Page
  set_url "/login"
  element :email, "#session_email"
  element :password, "#session_password"
  element :log_in_button, "input[name='commit']"

  def log_in
  	self.email.set 'foo@bar.com'
  	self.password.set 'foobar'
  	self.log_in_button.click
  end


end