class API_helper
  include HTTParty

  def initialize()
    @headers = {'Content-Type' => 'application/json'}
  end

  def GET(url)
    self.class.get(url)
  end

  def POST(url, body)
    self.class.post(url, body: body, headers: @headers)
  end

  def PUT
    self.class.put()
  end

  def DELETE
    self.class.delete()
  end
end