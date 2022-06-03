drop schema if exists series_workflow cascade;

create schema series_workflow;

set search_path to series_workflow;

create table CONTRACTS (
    contract_id serial not null primary key,
    salary_amt integer,
    signed_dt date,
    terminated_dt date
);

create table EMPLOYEES (
    employee_id serial not null primary key,
    second_nm varchar(100),
    first_nm varchar(100),
    birth_dt date
);

create table ACTORS (
    employee_id serial not null references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    sex_flg boolean,
    married_flg boolean
);

create table SCREENWRITERS (
    employee_id serial not null references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    debut_yr integer
);

create table SCENES (
    scene_id serial not null primary key,
    duration_sec integer,
    duplicates_amt integer
);

create table EPISODES (
    episode_id serial not null primary key,
    season_num integer,
    episode_num integer,
    rating_pct integer check (rating_pct between 0 and 100)
);

create table ARCS (
    arc_id serial not null primary key,
    arc_nm varchar(100),
    plot_desc text,
    first_episode_id serial
);

create table EMPLOYEES_X_CONTRACTS (
    employee_id serial references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    contract_id serial references CONTRACTS(contract_id)
                    on update cascade
                    on delete cascade
);

create table ACTORS_X_SCENES (
    employee_id serial references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    scene_id serial references SCENES(scene_id)
                    on update cascade
                    on delete cascade
);

create table SCREENWRITERS_X_EPISODES (
    employee_id serial references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    episode_id serial references EPISODES(episode_id)
                    on update cascade
                    on delete cascade
);

create table SCENES_X_EPISODES (
    scene_id serial references SCENES(scene_id)
                    on update cascade
                    on delete cascade,
    episode_id serial references EPISODES(episode_id)
                    on update cascade
                    on delete cascade
);

create table SCREENWRITERS_X_ARCS (
    employee_id serial references EMPLOYEES(employee_id)
                    on update cascade
                    on delete cascade,
    arc_id serial references ARCS(arc_id)
                    on update cascade
                    on delete cascade
);

create table EPISODES_X_ARCS (
    episode_id serial references EPISODES(episode_id)
                    on update cascade
                    on delete cascade,
    arc_id serial references ARCS(arc_id)
                    on update cascade
                    on delete cascade
);