class Playlist 
    def initialize 
        @playlist = []
    end


    def add(*song) 
        fail 'You must add a song' unless song.length >=1
        @playlist << song
       return @playlist.flatten
    end
    def view(*song) 
        flattenedPlaylist = @playlist.flatten
        if song.empty? 
            return flattenedPlaylist
        end

        if flattenedPlaylist.include?(song.join(''))
            return true
        else
            return false
        end
    end
end