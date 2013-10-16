class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  def self.authenticate(email, password)
    def self.authenticate(email, password)
    user = find_by_email(email)
    user.password == password ? user : false
  end
end
