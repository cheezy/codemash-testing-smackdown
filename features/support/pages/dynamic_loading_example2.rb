class DynamicLoadingExample2
  include PageObject

  button(:start, text: 'Start')

  def has_prompt?(prompt)
    wait_until do
      text.include? prompt
    end
  end

end