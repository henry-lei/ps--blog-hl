class Quote
  def self.get_quote_of_the_day(catagory)
    catagory ||= "love"

    uri = URI.parse("https://quotes.rest/qod?category=love")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    data = http.get(uri.request_uri)
    data.body
  end
end
