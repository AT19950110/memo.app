require "csv"

puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_number = gets.to_i

if memo_number == 1
  puts "拡張子を除いたファイル名を入力してください"

  file_name = gets.chomp

  puts "メモしたい内容を記入してください"
  p "完了したら Ctrl+D　を入力します"

  memo_type = readlines

  CSV.open("#{file_name}.csv", 'w') do |csv|
  csv << ["#{memo_type}"]

  end


  elsif memo_number == 2
  puts "拡張子を除いたファイル名を入力してください"
  
  file_name = gets.chomp

  puts "追記したい内容を入力してください"
  p "完了したら Ctrl+D　を入力します"

  memo_type = readlines

  CSV.open("#{file_name}.csv", 'w') do |csv|
  csv << ["#{memo_type}"]

  end

  else
  puts "エラー。1か2を選択してください"
end
