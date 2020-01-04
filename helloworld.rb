# HelloWorldと出力してみる
greeting = "HelloWorld"
puts greeting


#コンソールに1~10まで足した結果を表示してみよう　ただしfor文を使うこと
numbers = [1,2,3,4,5,6,7,8,9,10]
sum = 0
for i in numbers
	sum += i
end
put sum

#コンソールに「引数が0なら偽。引数が1なら真」と表示してみよう。 if文で表現できる。出来ればメソッドも用意して。
n = 1
if n == 1
	puts "真"
elsif n == 0
	puts "偽"
end
# → 真　と表示される

def number(n)
	if n == 1
	puts "真"
	elsif n == 0
	puts "偽"
	end
end

number(1)
# → 真　と表示される
number(0)
# → 偽　と表示される

# Communicationというクラスを作ってみよう。
class Communication
end

# greetというメソッドを定義してみよう
def greet
end

# クラスを継承して新しいサブクラスを作ってみよう。
  # WorkplaceCommunication(職場)とか
class WrkplaceCommunication < Communication
end

# greetというメソッド内でHelloという言葉を受けたら、Helloと返す 処理を実装してみよう。
def greet(message)
	message = "Hello"
	puts "Hello"
end

greet("Hello")

# 職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶 しないようにしてみよう
def greet(workplace)
	if workplace == "yes"
		puts "Hello"
	end
end

greet("yes")

# Communicationクラスに新しく話しかけてきた人が誰か(同僚と か上司とか)で応答を返すか、例外を返すような処理を作ってみ よう。
class Communication
	def greet(person)
		if person == "boss"
			puts "Hello"
		elsif person == "coworker"
			puts "Hi"
		else
			puts "bye"
		end
	end
end

communication = Communication.new

communication.greet("boss")
communication.greet("coworker")
communication.greet("friend")


#raiseによるエラー処理例(チェリー本p.344より)
# 大量のユーザにメールを送信する
users.each do |user|
	begin
	#通常の処理
	#メールを送信する
	send_mail_to(user)
	rescue => e
	#エラー時の処理
	例外のクラス名、エラーメッセージ、バックトレースをターミナル出力
	puts "#{e.class}: #{e.message}"
	puts e.backtrace
  end
end

# 出力結果は以下
# Traceback (most recent call last):
# practice.rb:1:in `<main>': undefined local variable or method `users' for main:Object (NameError)


# レスキューしないでraiseする処理の例




class ExceptionTest
  def test(num)
   if num.to_i == 10
       puts "10だよ！"
   else
       raise ArgumentError, "規定されている以外の数値です"
   end
  end
end

obj = ExceptionTest.new
# 例外発生
obj.test(9)


# 出力結果
# Traceback (most recent call last):
#         1: from practice.rb:18:in `<main>'
# practice.rb:11:in `test': 規定されている以外の数値です (ArgumentError)



















