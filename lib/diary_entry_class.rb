class DiaryEntry
    def initialize(title, contents) 
        @title = title
        @contents = contents
        @furthest_word_read = 0
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
        fail 'Reading speed must be above zero.' unless wpm > 0
        return (count_words / wpm.to_f).ceil
    end


     def reading_chunk(wpm, minutes) 
        fail 'Reading speed must be above zero.' unless wpm > 0

        no_words_we_can_read = wpm * minutes
        start_from = @furthest_word_read
        end_at = @furthest_word_read + no_words_we_can_read
       word_list = words[start_from, end_at]
    if end_at >= count_words
        @furthest_word_read = 0
    else
        @furthest_word_read = end_at
        end
     return word_list.join(" ")
    end

    private 

     def words 
        @contents.split(" ") 
     end
    end
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.



    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.