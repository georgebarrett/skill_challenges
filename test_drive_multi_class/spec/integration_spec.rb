require "diary"
require "diary_entry"

RSpec.describe "integration" do
  it "lists out the entries added" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
    diary_entry_2 = DiaryEntry.new("my_title 2", "my_contents 2")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end
    
  describe "word counting behaviour" do
    it "counts the words in all diaries entries' contents" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 5
    end
  end

  describe "reading time behaviour" do
    it "calculates the reading time for all entries where it fits exactly" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

end