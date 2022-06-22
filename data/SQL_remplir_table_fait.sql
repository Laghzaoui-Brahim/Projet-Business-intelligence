
/*-----------Table Variant -----------
SELECT loc.id_location, vr.id_variante,dt.id_date, sum(cv.num_sequences) as total_seq_mois
FROM  
[DB_Covid_Variant].[dbo].Variant as cv CROSS JOIN
[Covid_DWH].[dbo].variant as vr CROSS JOIN 
[Covid_DWH].[dbo].[location] as loc CROSS JOIN
[Covid_DWH].[dbo].[Date] as dt
where 
	loc.nom_location =  cv.location
	and vr.nom_variant = cv.variant
	and vr.num_seq =cv.num_sequences 
	and vr.perc_seq = cv.perc_sequences
	and CAST(dt.mois AS varchar(5)) +'/'+CAST(dt.jour AS varchar(5))+'/'+CAST(dt.annee AS varchar(5)) like cv.date 
group by loc.id_location, vr.id_variante, dt.annee, dt.mois,dt.id_date
order by id_location,dt.annee,dt.mois,dt.id_date
*/

/* sum(cv.new_Cases) as total_cases
, sum(cv.new_Deaths) as total_Deaths , sum(cv.new_Tests) as total_Tests
*/




/* --- Table Covid19--------------- 
SELECT dt.id_date,loc.id_location,vr.id_virus,cv.total_Cases,cv.total_Deaths,cv.total_Tests
FROM  
[DB_Covid19].[dbo].Covid as cv CROSS JOIN
[Covid_DWH].[dbo].[virus] as vr CROSS JOIN 
[Covid_DWH].[dbo].[location] as loc CROSS JOIN
[Covid_DWH].[dbo].[Date] as dt
where 
	loc.nom_location like  cv.country
	and vr.new_case = cv.new_Cases
	and vr.new_death = cv.new_Deaths 
	and vr.new_test = cv.new_Tests
	and CAST(dt.jour AS varchar(5)) +'/'+CAST(dt.mois AS varchar(5))+'/'+CAST(dt.annee AS varchar(5)) like cv.date
order by loc.id_location,dt.id_date,vr.id_virus
Go 
*/
















