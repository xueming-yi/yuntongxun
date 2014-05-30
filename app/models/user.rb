class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  after_save :create_account
  
  private
  def create_account
    sid = Digest::MD5.hexdigest(self.email)
    token = Digest::MD5.hexdigest("#{self.email}:#{self.created_at}")
    account = Account.new user: self, sid: sid, token: token, name: self.email
    account.save 
  end
end
