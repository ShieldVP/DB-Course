set search_path to series_workflow;

create or replace view SALARY_PER_TIME as
select salary_amt, terminated_dt - signed_dt as days
from CONTRACTS;

create or replace view EMPLOYEES_AGE as
select age(birth_dt)
from EMPLOYEES
order by birth_dt;

create or replace view ACTORS_SEX as
select sex_flg, count(married_flg)
from ACTORS
group by sex_flg;

create or replace view SCREENWRITERS_EXPERIENCE as
select 2021 - debut_yr as experience_yr
from SCREENWRITERS
order by debut_yr;

create or replace view TIME_SPENT as
select duplicates_amt * scenes.duration_sec as time_left_sec
from SCENES;

create or replace view EPISODES_CODES as
select 13 * episodes.season_num + episodes.episode_num as absolute_episode_no
from EPISODES;

create or replace function hide(string text) returns text as $$
begin
    return overlay(
        string placing '...'
        from 4 for char_length(string) - 9
    );
end;
$$ language plpgsql;

create or replace view ANOUNCE_ARCS as
select hide(plot_desc) as secret_plot
from ARCS;