require 'music_listening' 

RSpec.describe Playlist do 
    context "Given no song" do 
        it "fails" do 
            playlist = Playlist.new
            expect { playlist.add() }.to raise_error 'You must add a song'
        end
    end
    context "Given a song" do
        it "adds given song to the playlist" do 
            playlist = Playlist.new
            expect(playlist.add('Rocket man')).to eq ['Rocket man']
        end
    end
    context "Given multiple songs" do 
        it "adds given songs to the playlist" do
            playlist = Playlist.new
            expect(playlist.add('The motto', 'HUMBLE.', 'Acceptable In the 80s')).to eq ['The motto', 'HUMBLE.', 'Acceptable In the 80s']
        end
    end
    context "View method is called with no arguments" do
        it "returns the whole playlist" do
        playlist = Playlist.new
            playlist.add('Sweater Weather', 'Can You Feel My Heart', 'Touch The Sky')
            expect(playlist.view()).to eq ['Sweater Weather', 'Can You Feel My Heart', 'Touch The Sky']
        end
    end
    context "View method is called with a song title" do
        it "returns true" do
            playlist = Playlist.new
                playlist.add('Sweater Weather', 'Can You Feel My Heart', 'Touch The Sky')
                expect(playlist.view('Touch The Sky')).to eq true
        end
    end
    context "View method is called with an invalid string" do
        it "returns false " do
            playlist = Playlist.new
                playlist.add('Sweater Weather', 'Can You Feel My Heart', 'Touch The Sky')
                expect(playlist.view('Everybody Wants To Rule The World')).to eq false
        end
    end
end