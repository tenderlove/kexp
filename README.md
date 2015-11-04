# Just a thing to download KEXP playlists

I just made this so that I won't forget how to download playlists from the API
thing.  Also, I didn't know that the API even existed until now and I had to
figure out the parameters.

`download.rb` downloads playlists.  Also it seems like the API will close the
connection if the query is "too hard" (idk what constitutes too hard), so this
only downloads one day at a time.

`thing.rb` prints out the artist / album
