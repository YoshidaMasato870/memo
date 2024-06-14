require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

loop do

  puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

  memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。

  if memo_type == 1
      puts "拡張子を除いたファイル名を入力してください"
      file = gets.chomp
      file_name = file + '.csv'
      puts "文章を入力してください"
      puts "完了したらCtrl+Dを押してください"
      CSV.open(file_name, 'w') do |csv|
       csv << readlines
      end
  elsif memo_type == 2
      puts "拡張子を除いた編集するファイル名を入力してください"
      re_file = gets.chomp
      re_file_name = re_file + '.csv'
      puts "追加する文章を入力してください"
      puts "完了したらCtrl+Dを押してください"
      CSV.open(re_file_name, 'a') do |csv|
          csv << readlines
      end
  else
      puts "不正な値です"
      puts "1か2を押してください"
  end

end