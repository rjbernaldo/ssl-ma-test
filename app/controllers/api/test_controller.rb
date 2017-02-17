class Api::TestController < Api::BaseController
  skip_before_action :verify_authenticity_token
  
  def send_data
    # SEND CERTIFICATE
    # url = ARGV[0] || 'www.random.org'
    # https = Net::HTTP.new(url, Net::HTTP.https_default_port)
    # https.use_ssl = true
    # https.ssl_timeout = 2
    # https.verify_mode = OpenSSL::SSL::VERIFY_PEER
    # https.ca_file = '/usr/share/curl/curl-ca-bundle.crt'
    # https.verify_depth = 2
    # https.enable_post_connection_check = true
    # https.start do |http|
    #   request = Net::HTTP::Get.new('/')
    #   response = https.request(request)
    # end
    server_url = params[:url]
    
    if params[:step] == "1a"
      callback_response = get_json(server_url)
    elsif params[:step] == "1b"
      callback_response = get_blob(server_url)
    elsif params[:step] == "2"
      callback_response = post_json
    end
    
    render json: callback_response
  end

  def get_json(server_url)
    # VERIFY CERTIFICATE
    # response = HTTParty.get(server_url, verify: false, p12: File.read('/etc/nginx/certs/client/heiko.p12'), p12_password: 'test')
    response = HTTParty.get(server_url)
    return response.body
  end

  def get_blob(server_url)
    response = HTTParty.get(server_url, verify: false)
    return response.body
  end

  def recieve_get_json
    render json: { accepted: "get_json" }
  end

  def recieve_get_blob
    render json: { accepted: "get_blob" }
  end
end
