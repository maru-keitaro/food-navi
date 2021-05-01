class Genre < ActiveHash::Base

  self.data = [
    {id: 0, name: '---'},
    {id: 1, name: 'カフェ'}, 
    {id: 2, name: 'ラーメン'}, 
    {id: 3, name: '居酒屋'}, 
    {id: 4, name: 'バー'}, 
    {id: 5, name: '焼肉'}, 
    {id: 6, name: '寿司'}, 
    {id: 7, name: '魚介・海鮮料理'},
    {id: 8, name: 'イタリア料理'}, 
    {id: 9, name: 'フランス料理'}, 
    {id: 10, name: '韓国料理'}, 
    {id: 11, name: '中華料理'},
    {id: 12, name: 'その他'}
]

  include ActiveHash::Associations
  has_many :foods
end
