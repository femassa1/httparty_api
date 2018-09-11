require "rspec"
require "cucumber"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "faker"
require "cpf_faker"
require "documentos_br"
require "oci8"

Before do |feature|
  @api_helper = API_helper.new
  @db = DB_connect.new
end
