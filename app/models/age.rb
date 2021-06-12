class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '年齢層を選択' },
    { id: 2, name: '18~29歳' },
    { id: 3, name: '30~49歳' },
    { id: 4, name: '50~64歳' },
    { id: 5, name: '65~74歳' },
    { id: 6, name: '75歳以上' }
  ]
  include ActiveHash::Associations
  has_many :users
end