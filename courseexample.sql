/* 
Sample script for testing sql script
*/
/*
select 
    ps.PatientId
    ,ps.Hospital
    ,ps.Ward
    ,ps.AdmittedDate
    ,ps.DischargeDate
    ,ps.Tariff
    ,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) as LengthOfStay
    ,DATEADD(MONTH, -1, ps.AdmittedDate) as ReminderDate
from PatientStay ps
where ps.Hospital IN ('Kingston','PRUH') 
and ps.ward LIKE '%surgery%'
-- and ps.Tariff BETWEEN 3 and 6
order by 
    ps.AdmittedDate desc, 
    ps.PatientId desc
*/
--select DATEDIFF(DAY, '2025-03-12','2025-04-08')
/*
select
    ps.Hospital
    --,ps.Ward
    ,count(*) as NumberOfPatients 
    ,sum(ps.Tariff) as TotalTarrif
    ,max(ps.Tariff) as MaxTariff
from PatientStay ps
group by 
    ps.Hospital
    --, ps.Ward
--having sum(ps.Tariff) > 80
having count(*) < 13
order by TotalTarrif desc
*/

SELECT
    ps.PatientId    
    ,ps.AdmittedDate    
    ,dh.Hospital  
    ,dh.HospitalType
FROM
    PatientStay ps
    INNER JOIN DimHospital dh
    ON ps.Hospital = dh.Hospital
    -- shows null only where dh.Hospital is null