use Tec

Select 
	CAST (COUNT(*) as nvarchar) + ' Elever i Studieteknik' as 'H1 Forløb'
FROM 
	Klasse AS PrintKlasse
	
--Join er et sæt af data
JOIN 
	Elever AS Elev ON ElevID = Elev.ID
JOIN 
	Fag As Faget ON FagID = Faget.ID

where 
	Faget.Fag = 'Studieteknik'	
union
Select 
	CAST (COUNT(*) as nvarchar) + ' Elever i Grundlæggende programmering'
FROM 
	Klasse AS PrintKlasse

--Join er et sæt af data
JOIN 
	Elever AS Elev ON ElevID = Elev.ID
JOIN 
	Fag As Faget ON FagID = Faget.ID

where 
	Faget.Fag = 'Grundlæggende programmering'
union
Select 
	CAST (COUNT(*) as nvarchar) + ' Elever i Database programmering'
FROM 
	Klasse AS PrintKlasse
--Join er et sæt af data
JOIN 
	Elever AS Elev ON ElevID = Elev.ID
JOIN 
	Fag As Faget ON FagID = Faget.ID

where 
	Faget.Fag = 'Database programmering'
