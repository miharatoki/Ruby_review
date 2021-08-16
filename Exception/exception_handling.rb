puts 'hello'
module Greeter
  def hello
    'hello'
  end
end

# begin
#   greeter = Greeter.new  #例外（エラー）が起こりうる処理
# rescue
#   puts '例外が発生したが、このまま続行する'　 #例外が起きた際の処理
# end

# puts 'End'

begin
  1/0
rescue => exception #発生したエラーの情報を変数exceptionに格納する
  puts "エラークラス": "#{exception.class}"
  puts "エラーメッセージ": "#{exception.message}"
  puts "バックトレース ----"
  puts exception.backtrace
  puts "-----"
end

begin
  #例外が発生するかもしれない処理
rescue
  #例外が発生したときの処理
else
  #例外が発生しなかったときの処理
ensure
  #例外の有無に関わらず実行する処理
end

