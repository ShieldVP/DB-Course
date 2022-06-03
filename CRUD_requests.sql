set search_path to series_workflow;

------ select ------

select *
from SCENES
order by duplicates_amt;

------ insert ------

insert into SCENES values(10, 1, 2);

------ update ------

update SCENES
set duplicates_amt = 3
where scene_id = 10;

------ delete ------

delete
from SCENES
where scene_id = 10;