module Pages
  class SignUpPage
    include PageObject
    URL = 'https://staging-web.farmdrop.com/signup'.freeze

    text_field(:email, id: 'email')
    text_field(:password, css: '[id="password"]')
    text_field(:post_code, id: 'zipcode')
    label(:mailing_list, text: 'Add me to the mailing list')
    label(:no_mailing_list, text: 'No, thanks')
    button(:submit, id: 'email-signup-form-submit')

    def visit
      browser.goto(URL)
    end

    def submit_user
      submit_element.click
    end
  end
end