class Major < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '肉類', },
    { id: 3, name: '魚介類' },
    { id: 4, name: '卵類' },
    { id: 5, name: '豆類' },
    { id: 6, name: '乳類' },
    { id: 7, name: '穀類' },
    { id: 8, name: 'いも及びでん粉類' },
    { id: 9, name: '果実類' },
    { id: 10, name: '種実類' },
    { id: 11, name: 'きのこ類' },
    { id: 12, name: '藻類' },
    { id: 13, name: '野菜類' },
    { id: 14, name: '油脂類' },
    { id: 15, name: '砂糖及び甘味類' },
    { id: 16, name: '菓子類' },
    { id: 17, name: 'し好飲料類' },
    { id: 18, name: '調味料及び香辛料類' },
    { id: 19, name: '調理済み流通食品類' },
  ]
  include ActiveHash::Associations
  has_many :total
end