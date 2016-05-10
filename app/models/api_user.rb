class ApiUser < ApplicationRecord
  has_many :api_requests

  before_create :generate_key

  def permitted
    !self.banned
  end

  def generate_key
    begin
      self.api_key = SecureRandom.urlsafe_base64
    end while self.class.exists?(api_key: api_key)
  end
end
