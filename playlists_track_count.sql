SELECT PL.Name as "Playlist", COUNT(PLT.TrackID) as "Number of Tracks"
FROM Playlist PL
JOIN PlaylistTrack PLT
ON PL.PlaylistID=PLT.PlaylistID
GROUP BY PLT.PlaylistID;