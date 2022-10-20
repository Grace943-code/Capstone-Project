create table patient_guardian(
    id integer primary key AUTOINCREMENT,
    guard_name text,
    PatGuard_id integer,
    foreign key (PatGuard_id) references patient(id)
);

create table patient_psychologist(
    id integer primary key AUTOINCREMENT,
    psych_name text,
    PatPsych_id integer,
    foreign key (PatPsych_id) references patient(id)
);

-- REMEMBER TO create quizA_quizQ table !!!
-- create table quizA_quizQ(
--     quizAQ_id integer primary key AUTOINCREMENT
--     --FOREIGN KEY (quizA_id) REFERENCES quizA (id),
--     --FOREIGN KEY (quizQ_id) REFERENCES quizQ (id),
--     --FOREIGN KEY (patient_id) REFERENCES patient (id)
-- );

--  DROP TABLE guardian;
