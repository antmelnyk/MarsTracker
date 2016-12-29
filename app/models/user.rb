class User < ActiveRecord::Base

  @counter = 0

  def self.connection_check
    @counter += 1
    exponent_array = [2, 5, 15, 40, 100]
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.connection
    puts "Database is connected! Proceed..."
  rescue
    puts "NOT CONNECTED! Connection retry #{@counter}"
    sleep(exponent_array[@counter])
    retry
  end

  before_save { self.email = email.downcase }

  validates :name,  presence: true, length: { maximum: 10 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_secure_password

  validates :password, length: { minimum: 6 }

end
