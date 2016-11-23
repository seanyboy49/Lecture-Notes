# This program takes a text file and generates random text in the style
# of the original work.


# This function opens the file and reads it into a string
def get_string_from_file(filename)
  File.open(filename, "rb") do |f|
    return f.read
  end
end

# This function takes a string and creates a hash where the keys are
# words in the file, and the values are arrays of all words that follow that
# word in the file.
# e.g. if the file contained the string "one fish two fish red" we should get
# {"one"=>["fish"], "fish"=>["two", "red"], "two"=>["fish"], "red"=>[nil]}
def make_word_map(file_contents)
end

# This function takes a hash with the structure above and uses it to generate
# 100 words of random text
def print_random_text(next_words)
end

# filename = "data/one_fish_two_fish.txt"
filename = "data/romeo_and_juliet.txt"

# Put it all together!
# Read in a file, generate the map, and output the random text.
print_random_text(make_word_map(get_string_from_file(filename)))
