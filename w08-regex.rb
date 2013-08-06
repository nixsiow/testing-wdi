def re_literals
  str = 'yabba dabba doo'
  puts 'matched' if str =~ /abba/
  puts 'also matched' if /abba/ =~ str
end

def re_metacharacters
  puts '== Metacharacters'
  dot_re = /bet.y/ # Matches bet<any character>y
  puts 'betty' if 'betty' =~ dot_re
  puts 'betsy' if 'betsy' =~ dot_re
  puts 'bet=y' if 'bet=y' =~ dot_re
  puts 'bet.y' if 'bet.y' =~ dot_re

  real_dot_re = /bet\.y/ # Matches bet.y
  puts 'bet.y' if 'bet.y' =~ real_dot_re
  puts 'betty' if 'betty' =~ real_dot_re
end

def re_quantifiers
  star_re = /fred-*barney/ # Matches fred<any number of -s, including 0>barney
  puts "regex #{star_re}"
  puts 'fred-barney' if 'fred-barney' =~ star_re
  puts 'fred---barney' if 'fred---barney' =~ star_re
  puts 'fredbarney' if 'fredbarney' =~ star_re

  dot_star_re = /fred.*barney/ # Matches fred<anynumber of anythings>barney
  puts "regex #{dot_star_re}"
  puts 'fred and barney' if 'fred and barney' =~ dot_star_re
  puts 'fred barney' if 'fred barney' =~ dot_star_re
  puts 'fred, wilma, betty and barney' if 'fred, wilma, betty and barney' =~ dot_star_re
  puts 'fredbarney' if 'fredbarney' =~ dot_star_re

  plus_re = /fred-+barney/
  puts "regex #{plus_re}"
  puts 'fred-barney' if 'fred-barney' =~ plus_re
  puts 'fred---barney' if 'fred---barney' =~ plus_re
  puts 'fredbarney' if 'fredbarney' =~ plus_re

  question_re = /fred-?barney/
  puts "regex #{question_re}"
  puts 'fred-barney' if 'fred-barney' =~ question_re
  puts 'fredbarney' if 'fredbarney' =~ question_re
  puts 'fred---barney' if 'fred---barney' =~ question_re
end

def re_grouping
  puts '== Grouping'
  group_re = /(fred)+/
  puts "regex #{group_re}"
  puts 'fred' if 'fred' =~ group_re
  puts 'fredfredfred' if 'fredfredfred' =~ group_re
end

def re_backreferences
  backref_re = /(.)\1/
  puts "regex #{backref_re}"
  puts 'ff' if 'ff' =~ backref_re
  puts '!!' if '!!' =~ backref_re
  puts 'abc' if 'abc' =~ backref_re
end

def re_alternatives
  alternative_re = /fred|barney|betty/
  puts "regex #{alternative_re}"
  puts "fred" if "fred" =~ alternative_re
  puts "barney" if "barney" =~ alternative_re
  puts "betty" if "betty" =~ alternative_re

  alternative_re = /fred(:|-)barney/
  puts "regex #{alternative_re}"
  puts "fred:barney" if "fred:barney" =~ alternative_re
  puts "fred-barney" if "fred-barney" =~ alternative_re
  puts "fredbarney" if "fredbarney" =~ alternative_re
end

def re_classes
  class_re = /[Ff]red/
  puts "regex #{class_re}"
  puts "Fred" if "Fred" =~ class_re
  puts "fred" if "fred" =~ class_re
  puts "red" if "red" =~ class_re

  negated_class_re = /[^Ff]red/
  puts "regex #{negated_class_re}"
  puts "Fred" if "Fred" =~ negated_class_re
  puts "fred" if "fred" =~ negated_class_re
  puts "red" if "red" =~ negated_class_re
  puts "cred" if "cred" =~ negated_class_re
end

=begin

1. [10] Make a program that prints each line of its input that mentions fred.
(It shouldn’t do anything for other lines of input.) Does it match if your
input string is Fred, frederick, or Alfred? Make a small text file with a few
lines mentioning "fred flintstone" and his friends, then use that file as
input to this program and the ones later in this section.

2. [6] Modify the previous program to allow Fred to match as well. Does it
match now if your input string is Fred, frederick, or Alfred? (Add lines with
these names to the text file.)

3. [6] Make a program that prints each line of its input that contains a
period (.), ignoring other lines of input. Try it on the small text file from
the previous exercise: does it notice Mr. Slate?

4. [8] Make a program that prints each line that has a word that is
capitalized but not ALL capitalized. Does it match Fred but neither fred nor
FRED?

5. [8] Make a program that prints each line that has a two of the same
nonwhitespace characters next to each other. It should match lines that
contain words such as Mississippi, Bamm-Bamm, or llama.

6. [8] Extra credit exercise: write a program that prints out any input line
that mentions both wilma and fred.

=end
