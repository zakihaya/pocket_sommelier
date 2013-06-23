# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(id: 1, name: '赤ワイン', identifier: 'red_wine', order: 1)
Category.create(id: 2, name: '白ワイン', identifier: 'white_wine', order: 2)
Category.create(id: 3, name: 'ロゼワイン', identifier: 'rose_wine', order: 3)
Category.create(id: 4, name: '発泡系・シャンパン', identifier: 'sparkling_wine', order: 4)
Category.create(id: 5, name: 'ワインセット', identifier: 'wine_set', order: 9)

Feature.create(id: 1, name: 'パーティー向け', include_words: 'パーティー')
Feature.create(id: 2, name: 'プレゼントに最適', include_words: 'プレゼント,贈り物')
Feature.create(id: 3, name: '送料無料', include_words: '送料無料')
Feature.create(id: 4, name: 'ソムリエ厳選', include_words: '初心者,ビギナー,入門')
