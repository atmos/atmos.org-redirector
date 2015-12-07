require "spec_helper"

describe "www.atmos.org redirects" do
  it "rewrites without a path" do
    get "/"
    expect(last_response.status).to eql(301)
    expect(last_response.headers['Location']).to eql("https://atmos.org/")
  end

  it "rewrites with a path" do
    get "/github-services/heroku/"
    expect(last_response.status).to eql(301)
    expect(last_response.headers['Location']).to eql("https://atmos.org/github-services/heroku/")
  end

  it "rewrites with path and query parameters" do
    get "/github-services/heroku/?next=1&last=4"
    expect(last_response.status).to eql(301)
    expect(last_response.headers['Location']).to eql("https://atmos.org/github-services/heroku/?last=4&next=1")
  end
end
