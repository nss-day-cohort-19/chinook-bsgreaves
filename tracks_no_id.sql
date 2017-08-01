SELECT T.Name as "Song", A.Title as "Album", G.Name as "Genre", M.Name as "Media Type"
FROM Track T
JOIN Album A
ON T.AlbumID=A.AlbumID
JOIN Genre G
ON T.GenreID=G.GenreID
JOIN MediaType M
ON T.MediaTypeID=M.MediaTypeID;