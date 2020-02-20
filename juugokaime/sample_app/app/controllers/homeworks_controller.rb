class HomeworksController < ApplicationController
	def homeworks1
	end
end

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
def greet1(message)
	message = "Hello"
	p "HELLO"
end

# 職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶 しないようにしてみよう
def greet2(workplace)
	if workplace == "yes"
		p "Hello"
	end
end


# Communicationクラスに新しく話しかけてきた人が誰か(同僚と か上司とか)で
# 応答を返すか、例外を返すような処理を作ってみ よう。
class Communication
	def greet3(person)
		if person == "boss"
			p "Hello"
		elsif person == "coworker"
			p "Hi"
		else
			p "bye"
		end
	end
end

# raiseの処理をしてみる
class ExceptionTest
  def test(num)
   if num.to_i == 10
       p "10だよ！"
   else
       raise ArgumentError, "規定されている以外の数値です"
   end
  end
end

