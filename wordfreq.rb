require 'pry'
require 'csv'
require 'english'


class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']

    def initialize(filename) #bringing in the file
     h = Hash.new  #creating a new hash
     files = File.open(filename) # opening the file
       files.each_line do { |line| # split up into lines
         words = line.split
         words.each { |w|
           if h.has_key?(w)
             h[w] = h[w] + 1
             h[w] = 1
         }
       }
     end
   end

  def frequency(word)
    word_count = {}

File.open(filename) do |f|
  f.each_line do |line|
    words = line.split(' ').each do |word|
      word_count[word] += 1 if word_count.has_key? word
      word_count[word] = 1 if not word_count.has_key? word
    end
  end
end

puts word_count
  end

  def frequencies

  end

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
