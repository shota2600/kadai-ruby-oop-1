# クラスの定義
class Team
    
# インスタンスが持つ変数（値）
 # インスタンス毎に固有となる値を格納する変数
  attr_accessor :name, :win, :lose, :draw
  
# インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
      @name = name
      @win = win
      @lose = lose
      @draw = draw
  end
 
  
  # 勝率を戻り値とするメゾット【勝ち数/(勝ち数+負け数)】
    # ヒント：勝ち数と負け数は、ともに整数のため、to_f を使って割り算をする
  def calc_win_rate
   calc_win_rate = @win / (@win + @lose).to_f
  end
  
# インスタンスが持つメソッド（処理）
  def show_team_result()
      puts "#{@name} の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分 勝率は #{calc_win_rate}です。"
  end
end
 
# インスタンスの生成と、変数への代入
team1 = Team.new('Giants', 67, 45, 8)
team2 = Team.new('Tigers', 60, 53, 7)
team3 = Team.new('Dragons', 60, 53, 5)
team4 = Team.new('BayStars', 56, 58, 6)
team5 = Team.new('Carp', 52, 56, 12)
team6 = Team.new('Swallows', 41, 69, 10)

# インスタンスの使用
team1.show_team_result
team2.show_team_result
team3.show_team_result
team4.show_team_result
team5.show_team_result
team6.show_team_result