Before do
  @browser = Watir::Browser.new :firefox
  DefaultPlatform.register Experience::Web::Platform.new(@browser)
  @browser.goto("file:///#{File.expand_path('tutorial.html',File.dirname(__FILE__))}")
end

After do
  @browser.close
end
