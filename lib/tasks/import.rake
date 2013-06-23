require 'net/http'

namespace :import do
  namespace :rakuten do
    task :red_wine => :environment do
      import_items('563339', 1)
    end

    task :white_wine => :environment do
      import_items('563340', 2)
    end

    task :rose_wine => :environment do
      import_items('563341', 3)
    end

    task :sparkling_wine => :environment do
      import_items('563342', 4)
    end

    task :wine_set => :environment do
      import_items('302799', 5)
    end

    task :all => :environment do
      import_items('302799', 5)
      import_items('563339', 1)
      import_items('563340', 2)
      import_items('563341', 3)
      import_items('563342', 4)
    end
  end
end

def import_items(rakuten_genre_id, category_id)
  features = Feature.all

  api_url = "https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130424?format=json&genreId=#{rakuten_genre_id}&sort=-reviewCount&availability=1&affiliateId=09722a87.676ab167.09722a88.ce3510dc&NGKeyword=%E3%82%BB%E3%83%A9%E3%83%BC&applicationId=1031513552390120187"
  url = URI.parse(api_url)
  res = Net::HTTP.get(url)
  items = JSON.parse(res)['Items']

  items.each do |item_from_api|
    next if Item.find_by_code(item_from_api['Item']['itemCode'])
    next if item_from_api['Item']['reviewAverage'] < 4

    item = Item.new
    item.provider_type = 'rakuten'
    item.category_id = category_id
    item.code = item_from_api['Item']['itemCode']
    item.name = item_from_api['Item']['itemName']
    item.price = item_from_api['Item']['itemPrice']
    item.caption = item_from_api['Item']['itemCaption']
    item.url = item_from_api['Item']['affiliateUrl']
    item.tax_exclude = item_from_api['Item']['taxFlag']
    item.review_count = item_from_api['Item']['reviewCount']
    item.review_average = item_from_api['Item']['reviewAverage'] * 100

    item_from_api['Item']['mediumImageUrls'].each_with_index do |image, index|
      image = ItemImage.new(url: image['imageUrl'], order: index)
      item.images << image
    end

    features.each do |feature|
      if feature.include_words.split(',').any? {|target_word| item.name.include?(target_word) || item.caption.include?(target_word)}
        item.features << feature
      end
    end

    item.save!
  end

end
