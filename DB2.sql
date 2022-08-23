create table Student(
    stdID varchar(11) Primary Key,
	stdName varchar(20) not null,
	stdEmail varchar(30) not null,
	stdPhone int
);
create table Book(
    bkID varchar(11) Primary Key,
	bkTitle varchar(30) not null,
	bkAuthor varchar(20) not null,
);
create table Librarian(
    libID varchar(11) Primary Key,
	libName varchar(20) not null,
	libEmail varchar(30) not null,
	libPhone int
);
create table BookRecords(	
    borrowerID varchar(11) Primary Key,
	BorrowDate date,
	ReturnDate date,
);
create table BorrowedBooks(
 BorrowedBooks int primary key,
    borrowerID varchar(11) foreign key references BookRecords(borrowerID),
	stdID varchar(11) foreign key references Student(stdID),
	bkID varchar(11) foreign key references Book(bkID)
);
Select * from Librarian
Insert into Librarian(libID,libName,libEmail,libPhone) values ('1','NamSon','son@gmai.com','123456')

















