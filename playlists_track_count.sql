/* Provide a query that shows the total number of tracks in each playlist */

SELECT Playlist.Name, COUNT(PlaylistTrack.PlaylistId) AS TrackQuantity FROM Playlist
    JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
    GROUP BY PlaylistTrack.PlaylistId
