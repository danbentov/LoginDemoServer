Create Database LoginDemoDB
Go



Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go

Create Table Grades(
	[Subject] nvarchar(100) NOT NULL,
	Score int NOT NULL,
	[Date] DATETIME NOT NULL,
	Email nvarchar(100) FOREIGN KEY REFERENCES Users(Email)
)

INSERT INTO dbo.Grades VALUES ('History', 96,'22-jan-1987','ofer@ofer.com')
Go
INSERT INTO dbo.Grades VALUES ('Math',87,'13-apr-1987','ofer@ofer.com')
Go
INSERT INTO dbo.Grades VALUES ('English', 100,'12-dec-1986','ofer@ofer.com')
Go
INSERT INTO dbo.Grades VALUES ('Computers', 92,'1-feb-1987','ofer@ofer.com')
Go

select * from Grades

--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force