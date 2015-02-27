require 'uucs_client/version'
require 'rest_client'

class UucsClient

  def initialize host, admin_port
    @host = host
    @admin_port = admin_port
  end

  def get_token_and_uri filename
    response = RestClient.post "http://#{@host}:#{@admin_port}/tokens/#{filename}", {}
    obj = JSON.parse response
    if obj[:ok] == false
      raise "error occured: #{obj[:msg]}"
    end
    obj
  end

end
