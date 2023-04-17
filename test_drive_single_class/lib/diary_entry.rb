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
    return words.length
  end

  def reading_time(wpm)
    fail "Reading speed must be above zero." unless wpm > 0
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    no_words_we_can_read = wpm * minutes
    word_list = words[0, no_words_we_can_read]
    return word_list.join(" ")
    
    # `wpm` is an integer representing the number of words the user can read per minute
    # `minutes` is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end

  private

  def words
    return @contents.split(" ").length
  end

end


  