set search_path to series_workflow;

insert into EPISODES values(0, 1, 1, 75);
insert into EPISODES values(1, 1, 13, 91);
insert into EPISODES values(2, 2, 9, 88);
insert into EPISODES values(3, 4, 6, 76);
insert into EPISODES values(4, 7, 5, 90);
insert into EPISODES values(5, 8, 4, 89);
insert into EPISODES values(6, 10, 1, 79);

insert into EMPLOYEES values(0, 'Russell', 'Davies', '1963-04-27');
insert into EMPLOYEES values(1, 'Johnes', 'Matt', '1968-08-05');
insert into EMPLOYEES values(2, 'Greenhorn', 'Stephen', '1964-09-05');
insert into EMPLOYEES values(3, 'Moffat', 'Steven', '1961-11-18');
insert into EMPLOYEES values(4, 'Eccleston', 'Christopher', '1964-02-16');
insert into EMPLOYEES values(5, 'Tennant', 'David', '1971-04-18');
insert into EMPLOYEES values(6, 'Smith', 'Matthew', '1982-10-28');
insert into EMPLOYEES values(7, 'Capaldi', 'Peter', '1958-04-14');
insert into EMPLOYEES values(8, 'Piper', 'Billie', '1982-09-22');
insert into EMPLOYEES values(9, 'Agyeman', 'Freema', '1979-03-20');
insert into EMPLOYEES values(10, 'Gillan', 'Karen', '1987-11-28');
insert into EMPLOYEES values(11, 'Coleman', 'Jenna', '1986-04-27');
insert into EMPLOYEES values(12, 'Mackie', 'Pearl', '1987-05-29');

insert into SCREENWRITERS values(0, 1985);
insert into SCREENWRITERS values(1, 2007);
insert into SCREENWRITERS values(2, 1994);
insert into SCREENWRITERS values(3, 1989);

insert into ACTORS values(4, true, true);
insert into ACTORS values(5, true, true);
insert into ACTORS values(6, true, false);
insert into ACTORS values(7, true, true);
insert into ACTORS values(8, false, false);
insert into ACTORS values(9, false, false);
insert into ACTORS values(10, false, false);
insert into ACTORS values(11, false, false);
insert into ACTORS values(12, false, false);

insert into ARCS values(0, 'Bad Wolf', 'The character of Billie Piper is associated with the arch of the Bad Wolf — throughout the first season of new school, he and the Doctor were haunted by the words "Bad Wolf". In the final episode, it is revealed that the bad Wolf is Rose herself, who looked into the heart of the TARDIS and allowed the time vortex to enter her consciousness to save the Doctor, and that the messages, the meaning of which was still unclear, are also her work.', 0);
insert into ARCS values(1, 'Silence', 'In the fields of Trenzalore, at sunset on the Eleventh, when no living thing can lie or evade an answer, a Question will be asked. A question that should only be answered in silence.', 3);

insert into SCENES values(0, 11, 3);
insert into SCENES values(1, 14, 1);
insert into SCENES values(2, 10, 2);
insert into SCENES values(3, 18, 1);
insert into SCENES values(4, 20, 3);
insert into SCENES values(5, 14, 4);
insert into SCENES values(6, 18, 3);
insert into SCENES values(7, 17, 1);
insert into SCENES values(8, 15, 3);
insert into SCENES values(9, 13, 4);

insert into CONTRACTS values(0, 4900, '2009-12-30', '2010-03-30');
insert into CONTRACTS values(1, 3000, '2006-03-31', '2017-03-18');
insert into CONTRACTS values(2, 2000, '2007-04-28', '2012-01-19');
insert into CONTRACTS values(3, 1600, '2008-02-25', '2009-12-29');
insert into CONTRACTS values(4, 3200, '2003-07-02', '2011-05-11');
insert into CONTRACTS values(5, 4000, '2008-01-26', '2016-12-08');
insert into CONTRACTS values(6, 2200, '2005-03-14', '2014-06-21');
insert into CONTRACTS values(7, 2900, '2008-03-13', '2014-08-09');
insert into CONTRACTS values(8, 3100, '2008-02-21', '2011-07-17');
insert into CONTRACTS values(9, 4500, '2009-03-08', '2012-02-10');
insert into CONTRACTS values(10, 3300, '2005-12-08', '2012-11-18');
insert into CONTRACTS values(11, 3900, '2008-11-25', '2009-11-01');
insert into CONTRACTS values(12, 2700, '2009-04-10', '2010-08-11');
insert into CONTRACTS values(13, 1300, '2004-05-29', '2007-04-06');
insert into CONTRACTS values(14, 2200, '2007-04-27', '2017-05-14');
insert into CONTRACTS values(15, 1900, '2004-02-19', '2005-05-12');

insert into EMPLOYEES_X_CONTRACTS values(12, 0);
insert into EMPLOYEES_X_CONTRACTS values(9, 1);
insert into EMPLOYEES_X_CONTRACTS values(7, 2);
insert into EMPLOYEES_X_CONTRACTS values(11, 3);
insert into EMPLOYEES_X_CONTRACTS values(10, 4);
insert into EMPLOYEES_X_CONTRACTS values(1, 5);
insert into EMPLOYEES_X_CONTRACTS values(5, 6);
insert into EMPLOYEES_X_CONTRACTS values(10, 7);
insert into EMPLOYEES_X_CONTRACTS values(4, 8);
insert into EMPLOYEES_X_CONTRACTS values(12, 9);
insert into EMPLOYEES_X_CONTRACTS values(12, 10);
insert into EMPLOYEES_X_CONTRACTS values(4, 11);
insert into EMPLOYEES_X_CONTRACTS values(9, 12);
insert into EMPLOYEES_X_CONTRACTS values(2, 13);
insert into EMPLOYEES_X_CONTRACTS values(8, 14);
insert into EMPLOYEES_X_CONTRACTS values(6, 15);

insert into ACTORS_X_SCENES values(7, 5);
insert into ACTORS_X_SCENES values(4, 3);
insert into ACTORS_X_SCENES values(6, 6);
insert into ACTORS_X_SCENES values(6, 0);
insert into ACTORS_X_SCENES values(9, 2);
insert into ACTORS_X_SCENES values(11, 5);
insert into ACTORS_X_SCENES values(6, 2);
insert into ACTORS_X_SCENES values(7, 0);
insert into ACTORS_X_SCENES values(6, 9);
insert into ACTORS_X_SCENES values(6, 2);

insert into SCENES_X_EPISODES values(0, 6);
insert into SCENES_X_EPISODES values(9, 0);
insert into SCENES_X_EPISODES values(9, 4);
insert into SCENES_X_EPISODES values(0, 1);
insert into SCENES_X_EPISODES values(0, 1);
insert into SCENES_X_EPISODES values(1, 2);
insert into SCENES_X_EPISODES values(0, 1);
insert into SCENES_X_EPISODES values(2, 1);
insert into SCENES_X_EPISODES values(3, 1);
insert into SCENES_X_EPISODES values(8, 6);

insert into SCREENWRITERS_X_EPISODES values(0, 0);
insert into SCREENWRITERS_X_EPISODES values(0, 1);
insert into SCREENWRITERS_X_EPISODES values(1, 2);
insert into SCREENWRITERS_X_EPISODES values(2, 3);
insert into SCREENWRITERS_X_EPISODES values(3, 4);
insert into SCREENWRITERS_X_EPISODES values(3, 5);
insert into SCREENWRITERS_X_EPISODES values(3, 6);

insert into SCREENWRITERS_X_ARCS values(0, 0);
insert into SCREENWRITERS_X_ARCS values(3, 1);

insert into EPISODES_X_ARCS values(0, 0);
insert into EPISODES_X_ARCS values(1, 0);
insert into EPISODES_X_ARCS values(6, 1);