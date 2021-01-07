FactoryBot.define do
  factory :artwork do
    
    factory :test_artwork do 
      title {'test artwork'}
      image_url { 'https://cdn.pixabay.com/photo/2015/03/26/09/47/sky-690293__340.jpg' }
    end
  end
end
