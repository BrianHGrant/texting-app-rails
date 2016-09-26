class Quote < ApplicationRecord
  before_create :get_quote

private
  def get_quote
    begin
      response = JSON.parse(RestClient::Request.new(
        method: :post,
        url: "https://andruxnet-random-famous-quotes.p.mashape.com/",
        user: 'bhgrant8@gmail.com',
        headers: {'X-Mashape-Key': 'CsNuYRIWnKmsha2A8Sj7FcSKBGgvp1eMa2Yjsn3srnozO5OxLQ',
                  "Content-Type": "application/x-www-form-urlencoded",
                  "Accept": "application/json"
        },
        payload: { cat: "movies" }
      ).execute)
      self.quote = response['quote']
      self.author = response['author']
      self.category = response['category']
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      throw(:abort)
    end
  end
end
