set search_path to series_workflow;

------------ 1 ------------

with join1
    as (
        select second_nm, first_nm, EMPLOYEES.employee_id
        from EMPLOYEES
            join SCREENWRITERS
                on EMPLOYEES.employee_id = SCREENWRITERS.employee_id
    )
, join2
    as (
        select second_nm, first_nm, join1.employee_id, episode_id
        from join1
            join SCREENWRITERS_X_EPISODES
                on join1.employee_id = SCREENWRITERS_X_EPISODES.employee_id
    )
select second_nm, first_nm, avg(rating_pct)
from join2 join EPISODES on join2.episode_id = EPISODES.episode_id
group by (second_nm, first_nm);

------------ 2 ------------

with join1
    as (
        select SCENES_X_EPISODES.scene_id
        from EPISODES
            join SCENES_X_EPISODES
                on EPISODES.episode_id = SCENES_X_EPISODES.episode_id
        where rating_pct = (select min(rating_pct) from EPISODES)
    )
, join2
    as (
        select ACTORS_X_SCENES.employee_id
        from join1
            join ACTORS_X_SCENES
                on join1.scene_id = ACTORS_X_SCENES.scene_id
    )
, join3
    as (
        select EMPLOYEES_X_CONTRACTS.contract_id
        from join2
            join EMPLOYEES_X_CONTRACTS
                on join2.employee_id = EMPLOYEES_X_CONTRACTS.employee_id
    )
select CONTRACTS.contract_id, salary_amt, signed_dt, terminated_dt
from join3 join CONTRACTS
    on join3.contract_id = CONTRACTS.contract_id;

------------ 3 ------------

with join0
    as (
        select EPISODES_X_ARCS.episode_id, ARCS.arc_id
        from ARCS
            join EPISODES_X_ARCS
                on ARCS.arc_id = EPISODES_X_ARCS.arc_id
    )
, join1
    as (
        select SCENES_X_EPISODES.scene_id, arc_id
        from join0
            join SCENES_X_EPISODES
                on join0.episode_id = SCENES_X_EPISODES.episode_id
    )
, join2
    as (
        select ACTORS_X_SCENES.employee_id, arc_id
        from join1
            join ACTORS_X_SCENES
                on join1.scene_id = ACTORS_X_SCENES.scene_id
    )
, join3
    as (
        select arc_id, count(employee_id) as emp_amt
        from join2
        group by arc_id
    )
select arc_id
from join3
where emp_amt = (select max(emp_amt) from join3);

------------ 4 ------------

with join1
    as (
        select ACTORS.employee_id, EMPLOYEES_X_CONTRACTS.contract_id
        from ACTORS
            join EMPLOYEES_X_CONTRACTS
                on ACTORS.employee_id = EMPLOYEES_X_CONTRACTS.employee_id
        where sex_flg = false
    )
, join2
    as (
        select join1.employee_id, salary_amt
        from join1
            join CONTRACTS
                on join1.contract_id = CONTRACTS.contract_id
        where salary_amt > 2500
    )
select distinct second_nm, first_nm
from join2 join EMPLOYEES
    on join2.employee_id = EMPLOYEES.employee_id;

------------ 5 ------------

with join1
    as (
        select episode_id, duration_sec
        from SCENES
            join SCENES_X_EPISODES
                on SCENES.scene_id = SCENES_X_EPISODES.scene_id
        where duration_sec = (select min(duration_sec) from SCENES)
    )
select season_num, episode_num, rating_pct, duration_sec as shortest_scene
from join1 join EPISODES on join1.episode_id = EPISODES.episode_id;