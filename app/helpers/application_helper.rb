# frozen_string_literal: true

module ApplicationHelper
  def get_twitter_card_info(page)
    twitter_card = {}
    if page
      twitter_card[:url] = page.url
      twitter_card[:title] = 'SODATEYA'
      twitter_card[:description] = "あなたもわんちゃんを育ててみよう！"
      twitter_card[:image] = set_page_img(page.image_src)
    else
      twitter_card[:url] = 'https://sodateya.herokuapp.com/'
      twitter_card[:title] = 'SODATEYA'
      twitter_card[:description] = 'あなたもわんちゃんを育ててみよう！'
      twitter_card[:image] = 'https://sodateya.herokuapp.com/assets/images/twitter-card.png'      
      twitter_card[:card] = 'summary'
      twitter_card[:site] = '@gloomy_yuka'
      twitter_card
    end
  end 
end
