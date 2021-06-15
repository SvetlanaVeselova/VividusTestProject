Description: Simple visual tests;

Scenario: Create account 
Given I am on a page with the URL 'https://10minutemail.info/'
When I save `value` attribute value of element located `By.xpath(//*[@id="fe_text"])` to SCENARIO variable `email`
When I open URL `https://www.walmart.com/` in new window
When I click on element located `By.xpath(//*[@id="hf-account-flyout"]//span[text()='Account'])`
When I click on element located `By.xpath(//*[@id="vh-account-menu-root"]//div[text()='Account'])`
When I click on element located `By.xpath(//*[@id="main-content"]//div[1]/div/a[text()='create an account'])` 
When I enter `Svetlana` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `Veselova` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `${email}` in field located `By.xpath(//*[@id="email-su"])`
When I enter `1234qwER` in field located `By.xpath(//*[@id="password-su"])`
When I check checkbox located by `By.xpath(//*[@id="sign-up-form"]/div[7])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[text()='Create account'])`
Then the page with the URL 'https://www.walmart.com/account/signup?returnUrl=/account?r=yes' is loaded

Scenario: Perform search for product by search box, Add product to cart and Navigate to cart
Given I am on a page with the URL 'https://www.walmart.com/'
When I enter `car stereo` in field located `By.xpath(//*[@id="global-search-input"])`
When I click on element located `By.xpath(//*[@id="global-search-submit"])`
Then the page with the URL containing 'search/?query=car%20stereo' is loaded
When I click on element located `By.xpath(//*[@id="searchProductResult"]/div/div[1]/div/div/div[2]/div[2]/div[1]/div[3])`
When I click on element located `By.xpath(//*[@id="add-on-atc-container"]//span[contains(@class, 'spin-button-children')])`
Then the text 'You just added 1 item' exists
When I click on element located `By.xpath(//*[@id="cart-root-container-content-skip"]/div[1]//button/span[text()='View cart'])`
Then the text 'Your cart' exists

