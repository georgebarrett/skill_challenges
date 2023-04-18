require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my_title", "my_contents")
      diary_entry_2 = DiaryEntry.new("my_title 2", "my_contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
  end
end