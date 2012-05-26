class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
    
    def authenticate_http_admin
      authenticate_or_request_with_http_basic do |username, password|
        md5_of_password = Digest::MD5.hexdigest(password)
        username == 'happy' && md5_of_password == 'c23198187fda7c32eae614de1db57013'
      end
    end

end
