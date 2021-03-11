class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '和食' },
    { id: 3, name: '魚介、海鮮料理' },
    { id: 4, name: '天ぷら、揚げ物' },
    { id: 5, name: 'そば、うどん、麺類' },
    { id: 6, name: 'ラーメン' },
    { id: 7, name: '焼き鳥、串焼き、鳥料理' },
    { id: 8, name: 'すき焼き、しゃぶしゃぶ' },
    { id: 9, name: '鉄板焼き' },
    { id: 10, name: '丼もの' },
    { id: 11, name: 'カレー' },
    { id: 12, name: '焼肉' },
    { id: 13, name: '鍋' },
    { id: 14, name: '居酒屋、ダイニングバー' },
    { id: 15, name: 'ファミレス' },
    { id: 16, name: 'レストラン' },
    { id: 17, name: 'カフェ' },
    { id: 18, name: '喫茶店' },
    { id: 19, name: 'パン、サンドウィッチ' },
    { id: 20, name: 'スイーツ' },
    { id: 21, name: 'バー、ラウンジ、ビアガーデン' },
    { id: 22, name: 'パスタ、ピザ' },
    { id: 23, name: 'ステーキ、ハンバーグ' },
    { id: 24, name: '洋食、欧風料理' },
    { id: 25, name: 'フレンチ' },
    { id: 26, name: 'イタリアン' },
    { id: 27, name: 'スペイン料理' },
    { id: 28, name: '中華料理' },
    { id: 29, name: '韓国料理' },
    { id: 30, name: 'タイ料理' },
    { id: 31, name: 'ベトナム料理' },
    { id: 32, name: 'インド料理' },
    { id: 33, name: 'ネパール料理' },
    { id: 34, name: 'トルコ料理' },
    { id: 35, name: 'メキシコ料理' },
    { id: 36, name: 'ブラジル料理' },
    { id: 37, name: 'アフリカ料理' },
    { id: 38, name: 'その他' }
  ]





  include ActiveHash::Associations
  has_many :main_user_tweet
  end