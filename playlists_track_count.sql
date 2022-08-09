SELECT Playlist.Name, COUNT(PlaylistTrack.PlaylistId) AS TrackQuantity FROM Playlist
    JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
    GROUP BY PlaylistTrack.PlaylistId
