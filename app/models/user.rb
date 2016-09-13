class User < ActiveRecord::Base
  has_many :reviews
  def self.authenticate(userid,password)
    usr = find_by(userid: userid)
    if usr != nil && usr.password == password then
      usr
    else
      return
    end
  end
end
