class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'スキー場外飲食店' },
    { id: 3, name: 'スキー場内飲食店' },
    { id: 4, name: 'ホテル' },
    { id: 5, name: 'ショップ' },
    { id: 6, name: 'レンタル' },
    { id: 7, name: 'バス案内' },
    { id: 8, name: 'スキー場内リフト係' },
    { id: 9, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :jobs
  end