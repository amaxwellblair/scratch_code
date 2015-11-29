games = []
teams = ["team_1","team_2","team_3","team_4","team_5","team_6","team_7","team_8"]

teams.each do |team| # team_1

  pair_array = teams[teams.index(team)+1..7]
  while pair_array.length > 0
    games << [team, pair_array[0]]
    pair_array.shift
  end
end

puts games
