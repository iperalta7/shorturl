class ShortUrl < ApplicationRecord
  before_validation :generate_short_url, on: :create

  validates :original_url, presence: true
  validates :short_url, presence: true, uniqueness: true

  def generate_short_url
    self.short_url = loop do
      random_token = SecureRandom.urlsafe_base64(3, false)
      break random_token unless ShortUrl.exists?(short_url: random_token)
    end
  end
  
end