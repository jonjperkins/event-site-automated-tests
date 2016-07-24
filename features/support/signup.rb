class SignUp < SitePrism::Page

  set_url "/signup"

  element :name, "#user_name"
  element :email, "#user_email"
  element :password, "#user_password"
  element :password_confirmation, "#user_password_confirmation"
  element :signup_button, "input[name='commit']"
  
  def sign_up
  	self.name.set 'Test Guy'
  	self.email.set 'test@email.com'
  	self.password.set 'foobar'
  	self.password_confirmation.set 'foobar'
    self.signup_button.click
  end

end