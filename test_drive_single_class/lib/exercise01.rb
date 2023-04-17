class DiaryEntry
  def initialze(title, contents)
    # title and contents return string
  end

  def title
    # returns title as a string
  end

  def contents
    # returns contents as a string
  end

  def count_words
    # returns number of words in contents as an integer
  end

  def reading_time(wpm)
    # wpm is an integer representing the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes)
    # `wpm` is an integer representing the number of words the user can read per minute
    # `minutes` is an integer representing the number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
  