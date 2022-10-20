create TABLE patient(
    id integer primary key AUTOINCREMENT,
    patient_name VARCHAR(25) NOT NULL,
    patient_surname VARCHAR(25) NOT NULL,
    patient_username VARCHAR(25) UNIQUE NOT NULL,
    patient_birth date NOT NULL,
    patient_gender VARCHAR(1) NOT NULL,
    patient_address VARCHAR(50) NOT NULL,
    patient_email VARCHAR(50) NOT NULL,
    patient_image VARCHAR(50) NULL,
    patient_password VARCHAR(50) NOT NULL,
    patient_diagnosis VARCHAR(50) NOT NULL,
    patient_services VARCHAR(50) NOT NULL,
    patient_marriage VARCHAR(15) NOT NULL,
    PatPsych_id integer,
    foreign key (PatPsych_id) references psychologist(id)
);

create table guardian(
    id integer primary key AUTOINCREMENT,
    guard_name VARCHAR(25) NOT NULL,
    guard_surname VARCHAR(25) NOT NULL,
    guard_username VARCHAR(25) UNIQUE NOT NULL,
    guard_birth date NOT NULL,
    guard_gender VARCHAR(1) NOT NULL,
    guard_address VARCHAR(50) NOT NULL,
    guard_email VARCHAR(50) NOT NULL,
    guard_image VARCHAR(50) NULL,
    guard_password VARCHAR(50) NOT NULL,
    guard_relation VARCHAR(50) NOT NULL,
    guard_services VARCHAR(50) NOT NULL,
    guard_marriage VARCHAR(15) NOT NULL,
    PatGuard_id integer,
    foreign key (PatGuard_id) references patient(id)
);

create TABLE psychologist(
    psych_id integer primary key AUTOINCREMENT NOT NULL,
    psych_name VARCHAR(50) NOT NULL,
    psych_surname VARCHAR(50) NOT NULL,
    psych_username VARCHAR(25) UNIQUE NOT NULL,
    psych_birth date NOT NULL,
    psych_gender VARCHAR(1) NOT NULL,
    psych_address VARCHAR(50) NOT NULL,
    psych_email VARCHAR(50) NOT NULL,
    psych_image VARCHAR(50) NULL,
    psych_password VARCHAR(50) NOT NULL,
    psych_services VARCHAR(50) NOT NULL,
    psych_marriage VARCHAR(15) NOT NULL
    --FOREIGN KEY (patient_id) REFERENCES patient (id)
);

create table quizA(
    quizA_id integer primary key AUTOINCREMENT,
    quizA VARCHAR(255) NOT NULL
);

create table quizQ(
    quizQ_id integer primary key AUTOINCREMENT,
    quizQ VARCHAR(255) NOT NULL
);

CREATE TABLE patientQuiz(
    id integer primary key AUTOINCREMENT,
    Pat_id integer,
    foreign key (Pat_id) references patient(id),
    quizA_id integer,
    foreign key (quizA_id) references quizA(quizA_id)
); 

--  DROP TABLE patient;
