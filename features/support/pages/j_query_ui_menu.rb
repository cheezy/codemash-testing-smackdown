class JQueryUiMenu
  include PageObject

  jqueryui_menus(:menu, id: 'menu')
  link(:go_back_baby, text: 'Back to JQuery UI')

  def back_to_jquery
    menu_element.select('Enabled', 'Back to JQuery UI')
    go_back_baby
  end

end