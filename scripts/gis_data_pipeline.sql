-- SQL snippet to transform and load spatial data for municipal services
-- Sanitized for confidentiality

INSERT INTO zoning_map (zone_id, geometry, updated_at)
SELECT zone_id, ST_GeomFromText(raw_geometry), CURRENT_DATE
FROM raw_g
