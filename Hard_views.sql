set search_path to series_workflow;

-------- 1 --------

create or replace view ACTORS_IN_EPISODES as
with join1
    as (
        select SCENES_X_EPISODES.scene_id, season_num, episode_num
        from EPISODES
            join SCENES_X_EPISODES
                on EPISODES.episode_id = SCENES_X_EPISODES.episode_id
    )
, join2
    as (
        select ACTORS_X_SCENES.employee_id, season_num, episode_num
        from join1
            join ACTORS_X_SCENES
                on join1.scene_id = ACTORS_X_SCENES.scene_id
    )
select second_nm || ' ' || first_nm as name, 's' || season_num || ' e' || episode_num as episode
from join2 join EMPLOYEES
    on join2.employee_id = EMPLOYEES.employee_id;

-------- 2 --------

create or replace view MARRIED_ACTORS_SALARY as
with join1
    as (
        select ACTORS.employee_id, EMPLOYEES_X_CONTRACTS.contract_id
        from ACTORS
            join EMPLOYEES_X_CONTRACTS
                on ACTORS.employee_id = EMPLOYEES_X_CONTRACTS.employee_id
        where married_flg = true
    )
, join2
    as (
        select join1.employee_id, salary_amt
        from join1
            join CONTRACTS
                on join1.contract_id = CONTRACTS.contract_id
    )
select distinct second_nm || ' ' || first_nm as name, salary_amt
from join2 join EMPLOYEES
    on join2.employee_id = EMPLOYEES.employee_id;