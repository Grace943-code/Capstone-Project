Insert into patient(patient_name, patient_surname, patient_username, patient_birth, patient_gender, patient_address, patient_email, patient_image, patient_password, patient_diagnosis, patient_services, patient_marriage,PatPsych_id)
    values
    ("Kate","Masuku", "kmasuku", 1988-01-02, "F", "Pimville, Soweto", "kmasuku@gmail.com", "img1.jpg", "Password1", "depression","virtual therapy, blog, newsletter", "single",1);

Insert into guardian(guard_name, guard_surname, guard_username, guard_birth, guard_gender, guard_address, guard_email, guard_image, guard_password, guard_services, guard_marriage, guard_relation, PatGuard_id)
    values
    ("Jackie","Mokwena", "jmokwena", 1989-03-04, "F", "Soweto, Klipsruit", "jmokwena@gmail.com", "img2.jpg", "Password2","virtual therapy, blog, newsletter", "single", "sister", 1);

Insert into psychologist(psych_name, psych_surname, psych_username, psych_birth, psych_gender, psych_address, psych_email, psych_image, psych_password, psych_services, psych_marriage)
    values
    ("Jason","Mokwena", "jasonm", 1989-03-04,"M", "Johannesburg, Bramfontein", "jmokwena@mentclinic.co.za", "img3.jpg", "Password3", "virtual therapy, blog, newsletter", "married");

-- DROP TABLE guardian
