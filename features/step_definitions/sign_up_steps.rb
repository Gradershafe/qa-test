Given(/^(:?([^"]*)? )?user(:? try to)? signs? up(:? adding him to mailing list)?$/) do |user_type, try, mail_list|
  opts = { mail_list: mail_list, user_type: user_type, try: try ? true : false }
  Utils::SignUpUtil.sign_up_user(@signUpPage, @dataExtractor, opts)
end

When(/^I should be on "([^"]*)" page$/) do |page_name|
  Pages.const_get("#{page_name.split(' ').map(&:capitalize).join('_')}Page").new(@browser) do |page|
    begin
      Watir::Wait.until { page.loaded? }
    rescue TimeoutError
      raise TimeoutError("Page \"#{page_name}\" hasn't been loaded"\
            "in #{Watir.default_timeout}, but it should be")
    end
  end
end

Given(/^I navigate to sign up page$/) do
  @signUpPage = Pages::SignUpPage.new(@browser)
  @signUpPage.visit
end

Then(/^user logs out$/) do
  Pages::MainPage.new(@browser).logout
end

And(/^I should see "([^"]*)" error message$/) do |text|
  byebug
end