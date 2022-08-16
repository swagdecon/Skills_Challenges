require 'Diary_integration' 
require 'Diary_entry'

RSpec.describe "integration" do
    context "when we add entries" do
        it "goes into a list of entries" do
        diary = Diary.new 
        diary_entry = DiaryEntry.new('Example Title', 'Example Content')
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
        end
    end

    #No entries added 
    context "when we dont add entries" do
        it "returns an empty list" do
        diary = Diary.new 
        expect(diary.all).to eq []
        end
    end

    #count_words
    
    context "counts the number of words in all diary entries" do
        it "returns the number of words" do
        diary = Diary.new
        diary_entry = DiaryEntry.new('Example Title', 'Example Content')
        diary.add(diary_entry)
        expect(diary.count_words).to eq 2
        end
        context "counts the number of words in all diary entries" do
            it "returns the number of words" do
            diary = Diary.new
            diary_entry = DiaryEntry.new('Example Title', 'Example Content')
            diary_entry1 = DiaryEntry.new('Example Title1', 'Example Content1')
            diary.add(diary_entry)
            diary.add(diary_entry1)
            expect(diary.count_words).to eq 4
            end
        end
        context "There are no words" do
            it "returns 0" do
            diary = Diary.new
            diary_entry = DiaryEntry.new('', '')
            diary.add(diary_entry)
            expect(diary.count_words).to eq 0
        end
    end 
    context "When given a wpm" do
        it "returns the reading time (mins)" do
        diary = Diary.new
        diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 50 )
        diary.add(diary_entry)
        expect(diary.reading_time(200)).to eq 1
    end
end 
context "When given a wpm that is more than the reading time" do
    it "returns the reading time (mins)" do
    diary = Diary.new
    diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 150 )
    diary.add(diary_entry)
    expect(diary.reading_time(200)).to eq 2
    end
end 
context "When given a wpm of 0" do
    it "fails" do
    diary = Diary.new
    diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 200 )
    diary.add(diary_entry)
    expect{ diary.reading_time(0)}.to raise_error 'Reading speed must be above zero.'
    end
end
end

context "When the entry length is more than the number of readable words " do
    it "returns '' " do
    diary = Diary.new
    diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 200 )
    diary.add(diary_entry)
    result = diary.find_best_entry_for_reading_time(300, 1)
    expect(result).to eq ''
    end
end
context "When the entry length the exact same as the number of readable words " do
    it "returns that entry" do
    diary = Diary.new
    diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 100 )
    diary.add(diary_entry)
    result = diary.find_best_entry_for_reading_time(200, 1)
    expect(result).to eq diary_entry
    end
end

context "When the entry length the less than as the number of readable words " do
    it "returns the closest entry" do
    diary = Diary.new
    diary_entry = DiaryEntry.new('Example Title', 'Hello World! ' * 100 )
    diary_entry1 = DiaryEntry.new('Example Title', 'This is really tough ' * 150 )
    diary_entry2 = DiaryEntry.new('Example Title', 'Hello this is Ruby ' * 5 )
    diary.add(diary_entry)
    diary.add(diary_entry1)
    diary.add(diary_entry2)

    result = diary.find_best_entry_for_reading_time(650, 1)
    expect(result).to eq diary_entry1
    end
end

end
