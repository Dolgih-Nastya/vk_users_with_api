class Parser
  require_relative 'representative'
  require_relative 'user'
  # To change this template use File | Settings | File Templates.
  def initialize
    @result='response'
    @id='uid'
    @first_name='first_name'
    @last_name='last_name'
  end

  def create_user  (user_data)
    id =user_data[@id]
    first_name=user_data[@first_name]
    last_name=user_data[@last_name]
    User.new(id, first_name, last_name)
  end

  def get_users_by_ids  (ids)
    users=Array.new
    puts ids
    json_response=Representative.find_all_by_ids(ids)
    puts json_response
    users_data=json_response.parsed_response[@result]
    puts users_data
    users_data.each do |item|
      users.push(create_user(item))
    end
    users
  end
end
