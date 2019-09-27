module Pages
  class MainPage
    include PageObject
    link(:account_toggler, css: 'a[data-qaid="account-toggler"]')
    link(:logout, css: 'a[data-qaid="logout"]')

    def logout
      Utils::Retry.retry_block_on_raise(retries: 2) do
        account_toggler_element.click
        logout_element.click
      end
    end
  end
end