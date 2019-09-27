require_relative 'main_page'
module Pages
  class DiscoverPage < MainPage

    element(:page_identifier, text: 'Choose your delivery slot')

    def loaded?
      page_identifier_element.present?
    end
  end
end
