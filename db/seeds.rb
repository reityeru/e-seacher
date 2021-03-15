# CSVファイルを使用することを明示
require 'csv'

# 使用するデータ（CSVファイルの列）を指定
CSVROW_PREFNAME = 6
CSVROW_CITYNAME = 7

# CSVファイルを読み込み、DB（テーブル）へ保存
CSV.foreach(Rails.root.join('db/csv/KEN_ALL.CSV'), encoding: "Shift_JIS:UTF-8") do |row|
  prefecture_name = row[CSVROW_PREFNAME]
  city_name = row[CSVROW_CITYNAME]
  prefecture = Prefecture.find_or_create_by(name: prefecture_name)
  City.find_or_create_by(name: city_name, prefecture_id: prefecture.id)
end