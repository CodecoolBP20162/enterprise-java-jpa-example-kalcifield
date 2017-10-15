create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zipcode varchar(255), primary key (id))
create table Student (id  bigserial not null, age int8 not null, dateOfBirth date, email varchar(255), name varchar(255), address_id int8, primary key (id))
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zipcode varchar(255), primary key (id))
create table Student (id  bigserial not null, age int8 not null, dateOfBirth date, email varchar(255), name varchar(255), address_id int8, primary key (id))
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Phone add constraint FK8p74wyfckl9p9p9d7h5y0a9ea foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table class (id  bigserial not null, name varchar(255), primary key (id))
create table class_Student (class_id int8 not null, students_id int8 not null, primary key (class_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table class_Student add constraint UK_rqpw9hqne1i6pls47o3c99gup unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table class_Student add constraint FK7y4m2ruo06syx1a0hkcwbwpt foreign key (students_id) references Student
alter table class_Student add constraint FKriny34u6qj3de5fj6iwjio419 foreign key (class_id) references class
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table class (id  bigserial not null, name varchar(255), primary key (id))
create table class_Student (class_id int8 not null, students_id int8 not null, primary key (class_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table class_Student add constraint UK_rqpw9hqne1i6pls47o3c99gup unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table class_Student add constraint FK7y4m2ruo06syx1a0hkcwbwpt foreign key (students_id) references Student
alter table class_Student add constraint FKriny34u6qj3de5fj6iwjio419 foreign key (class_id) references class
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table class (id  bigserial not null, name varchar(255), primary key (id))
create table class_Student (class_id int8 not null, students_id int8 not null, primary key (class_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table class_Student add constraint UK_rqpw9hqne1i6pls47o3c99gup unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table class_Student add constraint FK7y4m2ruo06syx1a0hkcwbwpt foreign key (students_id) references Student
alter table class_Student add constraint FKriny34u6qj3de5fj6iwjio419 foreign key (class_id) references class
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (address_id int8 not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (address_id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (address_id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (address_id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), student_id int8, primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_id int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Address add constraint FK4q6j38bhikrv1pjbmde52gg7 foreign key (student_id) references Student
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FKf12myy73nsf6soln9xli8th80 foreign key (address_id) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (Student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FKlxixtpg4l6cepxnm9yifgr09d foreign key (Student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phoneNumbers varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, student_id int8, primary key (id))
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
alter table Student add constraint FKpc7iyfgxwgbpkrhb0o3lt98i4 foreign key (student_id) references Klass
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, location int4, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, location int4, name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
create table Address (id  bigserial not null, addr varchar(255), city varchar(255), country varchar(255), zip varchar(4), primary key (id))
create table Klass (id  bigserial not null, location varchar(255), name varchar(255), primary key (id))
create table Klass_Student (Klass_id int8 not null, students_id int8 not null, primary key (Klass_id, students_id))
create table phone (student_id int8 not null, phone_number varchar(255))
create table Student (id  bigserial not null, dateOfBirth date, email varchar(255) not null, name varchar(255), address_fk int8, primary key (id))
alter table Klass_Student add constraint UK_ar4qxlvkggkao0wxwg4qw66d8 unique (students_id)
alter table Student add constraint UK_msrnvlmsye9t98fb3bvekffiq unique (email)
alter table Klass_Student add constraint FK141vmi2elh0b4f8y38496gpx5 foreign key (students_id) references Student
alter table Klass_Student add constraint FKpgby4imfrc9p9tp2eeudvsdtf foreign key (Klass_id) references Klass
alter table phone add constraint FK4e9fgycwpdrmc1ogmqfddu9cq foreign key (student_id) references Student
alter table Student add constraint FK7h7k8tcc911knoug1c78k6m17 foreign key (address_fk) references Address
