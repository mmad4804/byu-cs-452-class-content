
-- 1. Create base tables first (no dependencies)
CREATE TABLE Lesson (
    lesson_id INTEGER PRIMARY KEY AUTOINCREMENT,
    lesson_name VARCHAR(50) NOT NULL
);

CREATE TABLE Commitment (
    commitment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    commitment_name VARCHAR(50) NOT NULL
);

-- 2. Create Address (no dependencies)
CREATE TABLE Address (
    address_id INTEGER PRIMARY KEY AUTOINCREMENT,
    street VARCHAR(50),
    city VARCHAR(35),
    state VARCHAR(35),
    zip INTEGER NOT NULL,
    teachingArea_id INTEGER NOT NULL
);

-- 3. Create Person (depends on Address)
CREATE TABLE Person (
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone_number VARCHAR(15),
    address_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address (address_id)
);

-- 4. Create Member (depends on Person)
CREATE TABLE Member (
    member_id INTEGER PRIMARY KEY AUTOINCREMENT,
    status VARCHAR(20) NOT NULL,
    calling VARCHAR(20),
    FOREIGN KEY (member_id) REFERENCES Person (person_id)
);

-- 5. Create Ward (depends on Address and Member)
CREATE TABLE Ward (
    ward_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ward_name VARCHAR(50) NOT NULL,
    start_time TIME NOT NULL,
    phone_number VARCHAR(15),
    address_id INTEGER NOT NULL,
    bishop_id INTEGER NOT NULL,
    FOREIGN KEY (address_id) REFERENCES Address (address_id),
    FOREIGN KEY (bishop_id) REFERENCES Member (member_id)
);

-- 6. Create TeachingArea (depends on Ward)
CREATE TABLE TeachingArea (
    teachingArea_id INTEGER PRIMARY KEY AUTOINCREMENT,
    area_name VARCHAR(50) NOT NULL,
    ward_id INTEGER NOT NULL,
    companionship_id INTEGER, -- temporarily nullable to avoid circular dependency
    FOREIGN KEY (ward_id) REFERENCES Ward (ward_id),
    FOREIGN KEY (companionship_id) REFERENCES MissionaryCompanionship (companionship_id)
);

-- 7. Create NonMember (depends on Person)
CREATE TABLE NonMember (
    nonMember_id INTEGER PRIMARY KEY AUTOINCREMENT,
    status VARCHAR(50) NOT NULL,
    finding_source VARCHAR(50) NOT NULL,
    FOREIGN KEY (nonMember_id) REFERENCES Person (person_id)
);

-- 8. Create MissionaryCompanionship (depends on Person)
CREATE TABLE MissionaryCompanionship (
    companionship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    missionary1_id INTEGER NOT NULL,
    missionary2_id INTEGER NOT NULL,
    FOREIGN KEY (missionary1_id) REFERENCES Person (person_id),
    FOREIGN KEY (missionary2_id) REFERENCES Person (person_id)
);

-- 9. Create LessonTaught (fix primary key and references)
CREATE TABLE LessonTaught (
    nonMember_id INTEGER NOT NULL,
    lesson_id INTEGER NOT NULL,
    member_id INTEGER NOT NULL,
    date_taught DATE NOT NULL,
    commitment_id INTEGER NOT NULL,
    summary VARCHAR(255),
    return_date DATE,
    PRIMARY KEY (nonMember_id, lesson_id, date_taught),
    FOREIGN KEY (nonMember_id) REFERENCES NonMember (nonMember_id),
    FOREIGN KEY (member_id) REFERENCES Member (member_id),
    FOREIGN KEY (commitment_id) REFERENCES Commitment (commitment_id),
    FOREIGN KEY (lesson_id) REFERENCES Lesson (lesson_id)
);

-- 10. Create CommitmentStatus
CREATE TABLE CommitmentStatus (
    nonMember_id INTEGER NOT NULL,
    commitment_id INTEGER NOT NULL,
    commitment_status VARCHAR(50) NOT NULL,
    PRIMARY KEY (nonMember_id, commitment_id),
    FOREIGN KEY (nonMember_id) REFERENCES NonMember (nonMember_id),
    FOREIGN KEY (commitment_id) REFERENCES Commitment (commitment_id)
);

-- 11. Create Contact
CREATE TABLE Contact (
    person_id INTEGER NOT NULL,
    contact_date DATETIME NOT NULL,
    summary VARCHAR(255),
    contact_type VARCHAR(50) NOT NULL,
    success_status VARCHAR(50) NOT NULL,
    PRIMARY KEY (person_id, contact_date),
    FOREIGN KEY (person_id) REFERENCES Person (person_id)
);

-- 12. Create ChurchAttendance
CREATE TABLE ChurchAttendance (
    person_id INTEGER NOT NULL,
    attendance_date DATE NOT NULL,
    ward_id INTEGER NOT NULL,
    PRIMARY KEY (person_id, attendance_date, ward_id),
    FOREIGN KEY (person_id) REFERENCES Person (person_id),
    FOREIGN KEY (ward_id) REFERENCES Ward (ward_id)
);
