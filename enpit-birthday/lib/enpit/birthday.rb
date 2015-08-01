# coding: utf-8
#require "enpit/birthday/version"

module Enpit
  module Birthday
    #　入力の初期値
    year = 2000
    month = 12
    day = 31
    
    # 入力部
    def input
      print 'Set year : '
      while year = gets.chomp.to_i
        if year < 1000 || year > 3000 then
          puts 'Input error : Please set proper number'
          print 'Set year : '
        else
          break
        end
      end
      print 'Set month : '
      while month = gets.chomp.to_i
        if month < 1 || month > 12 then
          puts 'Input error : Please set proper number'
          print 'Set month : '
        else
          break
        end
      end
      print 'Set day : '
      while day = gets.chomp.to_i
        if day < 1 || day > 31 then
          puts 'Input error : Please set proper number'
          print 'Set day : '
        else
          break
        end
      end
      puts "Your birthday is #{year}/#{month}/#{day}"
    end
    
    # wikipedia呼び出し部
    def wikipedia(year, month, day)
    
    end
    
    # twitter呼び出し部
    def twitter(year, month ,day)
    
    end
    
    # テキスト出力部
    def output
      
    end

    module_function :input
  end
  Birthday.input
end

