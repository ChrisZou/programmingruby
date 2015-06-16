#!/usr/bin/env ruby
require 'minitest/autorun'

class TestPlaylistBuilder
    def setup
        @db = DBI.connect('DBI:mysql:playlist')
        @pd = PlaylistBuilder.new(@db)
    end

    def teardown
        @db.disconnect
    end

    def test_empty_playlist
        assert_equal(@pd.playlist)
    end

    
end
