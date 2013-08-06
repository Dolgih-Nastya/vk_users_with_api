require_relative 'parser'
require_relative 'file_writer'
def get_users
  f_writer=FileWriter.new ('names.txt')
  ids=(1..250).to_a
  parser=Parser.new
  users=parser.get_users_by_ids(ids)
  users.each {  |user|
    f_writer.write(user)
  }

end

puts 'First 250 vk users'
get_users
puts 'Program is exit'