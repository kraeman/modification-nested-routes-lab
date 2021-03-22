module SongsHelper
    def artist_id_field(song)
        if song.artist.nil?
          select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
        else
          hidden_field_tag "song[artist_id]", song.artist_id
        end
    end

    def artist_select(song)
    
      if song.artist
        link_to(song.artist.name, artist_path(song.artist))
      else
        link_to("Add Artist", edit_song_path(song))
      end
    end
end
