require "diary_entry_class"

RSpec.describe DiaryEntry do 
    it 'Helps the user track different diary info' do 
        diary = DiaryEntry.new('Example Diary', 'Example Contents')
        result = diary.title
        expect(result).to eq 'Example Diary'

        result = diary.contents
        expect(result).to eq 'Example Contents'

        result = diary.count_words
        expect(result).to eq diary.contents.split(' ').length

        result = diary.reading_time(200)
        expect(result).to eq (2 / 200.to_f).ceil

        # diary.reading_chunk(200, 10)
        # @contents = 'Example' * (200 * 10)
        # expect(result).to eq diary.contents.split(' ')[0..2000]
         end
end