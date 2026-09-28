require "net/http"

def send_user_1(email, first_name)
  puts "user #{email}"
  Net::HTTP.post_form(URI("https://api.segment.io/v1/track"), "email" => email, "name" => first_name)
end
