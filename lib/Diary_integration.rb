# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
  @entries << entry
  end

  def all
    return @entries
  end
  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
    sumofentries = @entries.map {|entry| entry.count_words }
    return Integer(sumofentries.sum)
    
  end

  def reading_time(wpm) 
    fail 'Reading speed must be above zero.' unless wpm > 0
      return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    total_words_read = wpm * minutes
    best_entry = ''
    closest = wpm * minutes
    entry_words = @entries.map do |entry| 

    if entry.count_words > total_words_read 
      return best_entry
    elsif entry.count_words == total_words_read 
      best_entry = entry
      
    elsif entry.count_words < total_words_read && total_words_read - entry.count_words < closest
    
    closest = total_words_read - entry.count_words 

      best_entry = entry
  
    end
  end

return best_entry


    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

