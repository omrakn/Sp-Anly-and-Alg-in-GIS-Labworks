SELECT s.*, m.ilce_adi FROM municipalities.settlement AS s, municipalities.districts AS m, municipalities.flooding_areas AS f 
WHERE s.d_id = m.d_id AND st_intersects(s.geom, f.geom) ORDER BY ilce_adi