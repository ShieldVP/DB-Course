set search_path to series_workflow;

------------ 1 ------------

create or replace function deleteban() returns trigger
as $$
begin
    raise exception 'UNDELETABLE';
    return new;
end;
$$ language plpgsql;

------------ 2 ------------

create or replace function updateban() returns trigger
as $$
begin
    raise exception 'UNEDITABLE';
    return new;
end;
$$ language plpgsql;

------------ plugging ------------

create trigger on_delete before delete on CONTRACTS
for each row execute procedure deleteban();

create trigger on_update before update on CONTRACTS
for each row execute procedure updateban();