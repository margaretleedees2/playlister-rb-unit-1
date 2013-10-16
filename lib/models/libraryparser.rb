class LibraryParser

  def initialize(file)
    Dir.foreach(file) do |filename|  
      next if filename.start_with?('.')
      puts filename.gsub('[',' - ').gsub(']',' - ').split(' - ')
    end
  end  
end  

parser = LibraryParser.new('../../data')

















        # item.take_while {|i| i != "].mp3"} # => [1, 2]














            #   ugly = file.split(/- | \[/)[2]
    #   ugly.split("]")[0]
    # rescue puts "there's an error"
    # end

      # ugly = file.slice(/- | \[/)[2]
      # # puts ugly.slice("].mp3")
      # puts ugly.class

        # array[0]
        # .each do |item|
      #   p item
      #   # puts artist = item[0]
      #   # puts song = item[1].split.("].").first
      # end