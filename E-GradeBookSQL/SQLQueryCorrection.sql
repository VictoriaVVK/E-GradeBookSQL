ALTER TABLE Students
ADD CONSTRAINT FK_Students_Classrooms
FOREIGN KEY (ClassId) REFERENCES Classrooms(Id);

