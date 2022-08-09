/* Provide a query that shows all the Tracks, but displays no IDs */

SELECT Track.Name AS TrackName, Album.Title AS AlbumTitle, MediaType.Name AS MediaType, Genre.Name AS Genre FROM Track
    JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
    JOIN Album on Album.AlbumId = Track.AlbumId
    JOIN Genre on Genre.GenreId = Track.GenreId