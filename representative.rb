class Representative
  # To change this template use File | Settings | File Templates.     u
  require 'httparty'
  include HTTParty
  base_uri 'api.vk.com'
  default_params :output=>'json'
  format :json
  def self.find_all_by_ids(ids)
    get('/method/users.get', :query=>{:user_ids=>ids})
  end
end