class DiaryEntry
    def initialize(title, contents) 
        @title = title
        @contents = contents
    end


    def title
        return @title
    end


    def contents
        return @contents
    end


    def count_words
        return @contents.split(" ").length
    end


    def reading_time(wpm) 
        words = @contents.split(" ")
        return (words.length / 200.to_f).ceil
    end


    # def reading_chunk(wpm, minutes) 
    #     wpm = 200 
    #     minutes = 10 
    #     reading_chunks = 2000 
    #     num_words = 4000
    #     count = 0 
    #     wordsArr = @contents.split(" ")
    #     return wordsArr[0..reading_chunks]

    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.



    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end