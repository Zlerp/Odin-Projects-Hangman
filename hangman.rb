

  contents = File.read "5desk.txt"  # Reads the population of words
  contents =  contents.split(" ")

  words=[]
  contents.each do |word|
    if word.length > 4
      words << word     # selects only words that are 5 or larger in size
    end
  end

  words = words.sort_by { rand }.first    # Selects a random word from the new population
  blanks = words.length
  p "_ "*blanks
  p words
