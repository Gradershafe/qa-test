module Utils
  module SignUpUtil
    def self.sign_up_user(page, dataExatractor, opts)
      user_data = dataExatractor.send("get_#{opts[:user_type].downcase.gsub(' ', '_')}_user")
      page.email = user_data[:email]
      page.password = user_data[:password]
      page.post_code = user_data[:post_code]
      if opts[:mail_list]
        page.mailing_list_element.click
      else
        page.no_mailing_list_element.click
      end
      page.submit_user unless opts[:try]
    end
  end
end