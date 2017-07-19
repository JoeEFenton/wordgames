require 'pry'
require 'csv'
require 'english'


class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']

    def initialize(filename) #bringing in the file
     files = File.read(filename).downcase # opening the file
     files.gsub!(rubular, '')
     STOP_WORDS.each do |word|
       files.gsub!(/\b(?:#{word})\b/, "")
     end
     files
   end

  def frequency(word)
    word_count = @files.scan(regex).count
end

puts word_count
  end

  def frequencies
    h = Hash.new  #creating a new hash
    numbnuts = @file.split(' ')
    numbnuts.each do |word|
      h[word] = frequency(word)

  end
h
  def top_words(number)
  end

  def print_report
  end
end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end

binding.pry
