require_relative 'header_panel'

class HomePage
  include PageObject
  include DataMagic
  include HeaderPanel

  page_url 'http://growing-planet-634.herokuapp.com/welcome'

  text_field(:username, id: 'username')
  text_field(:password, id: 'password')
  button(:login_to_system, id: 'login_button')

  def perform_login
    login
    populate_page_with data_for :login_page
    login_to_system
  end
end