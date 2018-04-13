class ApiClient
  def initialize
    conn = Faraday.new(:url => '') do |faraday|
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end
end