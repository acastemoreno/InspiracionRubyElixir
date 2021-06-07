def split_in_char(phrase) = phrase.split("")
def swapcase(list) = list.map {|char| char.swapcase}
def join_chars(chars) = chars.join
def split_phrase(phrase) = phrase.split
def reverse_list(list) = list.reverse
def join_words(words) = words.join(" ")
def print_result(result) = puts(result)

(
  method(:split_in_char) \
  >> method(:swapcase) \
  >> method(:join_chars) \
  >> method(:split_phrase) \
  >> method(:reverse_list) \
  >> method(:join_words) \
  >> method(:print_result)
).call("Tech Talks")