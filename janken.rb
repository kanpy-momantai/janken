def janken()
  puts "ジャンケンをします"
  puts "出す手を選んでください"
  puts "0(グー)　1(チョキ) 2(パー)"
  hands = gets.to_i
  case hands
  when 0 then
    puts "あなたはグーを出しました"
  when 1 then
    puts "あなたはチョキを出しました"
  when 2 then
    puts "あなたはパー出しました"
  end

  cpu_hands = rand(3)
  case cpu_hands
  when 0 then
    cpu_hands_name = "グー"
  when 1 then
    cpu_hands_name = "チョキ"
  when 2 then
    cpu_hands_name = "パー"
  end

  print "相手は",cpu_hands_name,"を出したので"
  case hands
  when 0 then
    case cpu_hands
    when 0 then
      puts("あいこ")
      puts("----------------------------------")
      jyanken()
    when 1 then
      puts("勝ち")
      puts("----------------------------------")
      winner = true
      look_this_way(winner)
    when 2 then
      puts("負け")
      puts("----------------------------------")
      winner = false
      look_this_way(winner)
    end
  when 1 then
    case cpu_hands
    when 0 then
      puts("負け")
      puts("----------------------------------")
      winner = false
      look_this_way(winner)
    when 1 then
      puts("あいこ")
      puts("----------------------------------")
      janken()
    when 2 then
      puts("勝ち")
      puts("----------------------------------")
      winner = true
      look_this_way(winner)
    end
  when 2 then
    case cpu_hands
    when 0 then
      puts("勝ち")
      puts("----------------------------------")
      winner = true
      look_this_way(winner)
    when 1 then
      puts("負け")
      puts("----------------------------------")
      winner = false
      look_this_way(winner)
    when 2 then
      puts("あいこ")
      puts("----------------------------------")
      janken()
    end
  end
end

def look_this_way(winner)
  puts "あっち向いてホイをします"
  if winner == true then
    puts "指を差す方向を決めてください"
    puts "0(左)　1(上)　2(右)　3(下)　いずれかの数字を入力してください"
    finger = gets.to_i
    case finger
    when 0 then
      puts "あなたは左を選びました"
    when 1 then
      puts "あなたは上を選びました"
    when 2 then
      puts "あなたは右を選びました"
    when 3 then
      puts "あなたは下を選びました"
    end

    cpu_face = rand(4)
    case cpu_face
    when 0 then
      cpu_face_name = "左"
    when 1 then
      cpu_face_name = "上"
    when 2 then
      cpu_face_name = "右"
    when 3 then
      cpu_face_name = "下"
    end
    print "相手は",cpu_face_name,"を向いたので"

    if finger == cpu_face then
      puts "あなたの勝ち"
    else
      puts "もう一回"
      puts("----------------------------------")
      janken()
    end
  else
    puts "顔を向ける方向を決めてください"
    puts "0(左)　1(上)　2(右)　3(下)　いずれかの数字を入力してください"
    face = gets.to_i
    case face
    when 0 then
      puts "あなたは左を選びました"
    when 1 then
      puts "あなたは上を選びました"
    when 2 then
      puts "あなたは右を選びました"
    when 3 then
      puts "あなたは下を選びました"
    end

    cpu_finger = rand(4)
    case cpu_finger
    when 0 then
      cpu_finger_name = "左"
    when 1 then
      cpu_finger_name = "上"
    when 2 then
      cpu_finger_name = "右"
    when 3 then
      cpu_finger_name = "下"
    end
    print "相手は",cpu_finger_name,"に指を向けたので"

    if face == cpu_finger then
      puts("あなたの負け")
    else
      puts("もう一回")
      puts("----------------------------------")
      janken()
    end
  end
end

janken()
