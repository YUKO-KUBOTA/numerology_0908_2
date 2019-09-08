class NumerologysController < ApplicationController
  def result
    # ここにcalcの内容を書く
    
      #実行処理開始
      # puts "カバラ数秘術"
      # scene = "start"
                
      # puts '生まれた年を入力してください'
      # year = gets.chars.map(&:to_i).sum
      #gets # =>"1984".chars
      #.chars # => ["1", "9", "8", "4"].map
      #.map(&:to_i)  # => [1, 9, 8, 4].sum
      #.sum # => 22 
      #year = gets.chars.map { |c| c.to_i }
      
      # puts '生まれた月を入力してください'
      # month = gets.chars.map(&:to_i).sum
      
      # puts '生まれた日を入力してください'
      # day = gets.chars.map(&:to_i).sum
       
      
      # puts "あなたの誕生数は"
      # sleep 2
      # puts numerology.kabbala_number
      # sleep 2
      # puts numerology.kabbala
      # sleep 2
      
      
      # このインスタンス変数が作成されている
      
      # puts numerology_detail.kabbala_2
      # sleep 2
      # puts "あなただけの誕生数は"
      # sleep 2
      # このインスタンス変数が作成されている
     
      # puts numerology_individual.kabbala_individual_number
      # sleep 2
      # puts "それは"
      # sleep 2
      # numerology_individual = Numerology_individual.new(total)
      # puts numerology_individual.kabbala_individual
      # sleep 3
      # puts "もう一度占いますか？"
      # sleep 2
      
              # when 2
              # puts "終了します"
              # puts "またおこしください"
              # sleep 2
              # exit
              # else
              # puts "選択がまだです"
              # scene = "start"
    
    year = current_user.birthday.strftime("%Y").chars.map(&:to_i).sum
    month = current_user.birthday.strftime("%m").chars.map(&:to_i).sum
    day = current_user.birthday.strftime("%d").chars.map(&:to_i).sum
    total = year + month + day
    @numerology = current_user.nume(total)
    @numerology_detail = current_user.numerology_detail(total)
    @numerology_individual = current_user.numerology_individual(total)
    # このインスタンス変数が作成されている
    
  end
  
end
