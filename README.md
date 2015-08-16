### Steps to run

```bash
 git clone https://github.com/naveenkrishnan01/dsc.git 
```
Install bundler http://bundler.io/
```bash
 bundle install
```

Browser for Selenium Webdriver 2.47(latest) supports Firefox version 34.0.5 and below 

> Run the script by cd into spec folder and run the following command
```bash 
rspec *.rb  --format html --out rspec_results.html
```

> Some of the features for rspec/capybara in this test are as follows
 - produces xml output in the test-report folder
 - if there is a error it captures the screen shot
 - html output
 - retry of the script, you can specify number of retries
 - Run it with chrome browser by uncommenting the code in DscConfig.rb 
