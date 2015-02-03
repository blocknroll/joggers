
GROUP_BY
  (1..6).group_by { |i| i%3 }   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}

INJECT / REDUCE
  (5..10).inject { |sum, n| sum + n }             #=> 45
  values.reduce { |sum, n| sum + n }
  (5..10).inject(1) { |product, n| product * n }  #=> 151200
  (5..10).reduce(:+)                              #=> 45

MAP / COLLECT
  (1..4).map { |i| i*i }      #=> [1, 4, 9, 16]
  (1..4).collect { "cat"  }   #=> ["cat", "cat", "cat", "cat"]

SELECT
  [1,2,3,4,5].select { |num|  num.even?  }    #=> [2, 4]

REJECT
  (1..10).reject { |i|  i % 3 == 0 }          #=> [1, 2, 4, 5, 7, 8, 10]
  [1, 2, 3, 4, 5].reject { |num| num.even? }  #=> [1, 3, 5]

EACH WITH INDEX
  hash = Hash.new
  %w(cat dog wombat).each_with_index { |item, index|
    hash[item] = index
  }
  hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}
