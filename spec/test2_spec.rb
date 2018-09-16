require_relative "../util/spec_helper"

describe "Google Search" do
  it "search text on google" do
  	@base_url = "https://www.google.com"
    @browser.get(@base_url + "/")
  end
end
