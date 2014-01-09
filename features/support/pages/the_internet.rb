class TheInternet
  include PageObject

  page_url 'http://localhost:9292'

  def select_link(text)
    link_element(:text => text).click
  end

end