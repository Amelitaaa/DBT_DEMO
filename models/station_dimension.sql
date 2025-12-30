with bike as(

select distinct
start_statio_id AS start_station_id,
start_station_name AS start_station_name,
start_lat AS station_lat,
start_lng AS station_lng

from {{ source('demo', 'bike') }}
where ride_id != 'ride_id'

)

select * from bike