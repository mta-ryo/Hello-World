puts 'こんにちは'
puts '選択してください'
puts '[1]ファイルを作成します'
puts '[2]ファイルを削除します'
mission = gets.chomp
if mission == "1"
	puts "作成するファイル名を入力してください。例：Alfa.txt sample.rb"
	fileName = gets.chomp
	#ファイル作成処理
	File.open fileName, 'w' do |f|
	now = Time.now

	f.write now.strftime('%Y/%m/%d %H:%M:%S') +"に作成しました。"
	end
	puts "ファイルを作成しました。"
elsif mission == "2"
	puts "削除するファイル名を入力してください。例:Alfa.txt sample.rb"
	fileName = gets.chomp
	#ファイル削除処理
	begin
		File.unlink(fileName)
		puts "対象ファイルを削除しました。"
	rescue => e
		puts "Error occured (#{e.message})"
	end
else 
	puts "未実装"
end
