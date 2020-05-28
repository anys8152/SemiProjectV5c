-- member
CREATE TABLE member(
  mno INT PRIMARY KEY auto_increment,
  name VARCHAR(18) not NULL ,

  jumin VARCHAR(15) not NULL ,
  userid VARCHAR(18) not NULL ,
  passwd VARCHAR(18) not NULL ,

  jipcode VARCHAR(7) not NULL ,
  addr1 VARCHAR(50) not NULL ,
  addr2 VARCHAR(50) not NULL ,

  email VARCHAR(50) not NULL ,
  mobile VARCHAR(13) not NULL ,
  regdate datetime DEFAULT CURRENT_TIMESTAMP

);

-- board
CREATE TABLE board(
  bno INT PRIMARY KEY auto_increment,
  title VARCHAR(50) NOT NULL ,
  userid VARCHAR(20) NOT NULL ,
  regdate datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup VARCHAR(5) DEFAULT 0,
  views VARCHAR(5) DEFAULT 0,
  contents mediumtext NOT NULL
);
-- pds
CREATE TABLE pds(
  pno INT PRIMARY KEY auto_increment,
  title VARCHAR(50) NOT NULL ,
  userid VARCHAR(20) NOT NULL ,
  regdate datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup VARCHAR(5) DEFAULT 0,
  views VARCHAR(5) DEFAULT 0,
  contents mediumtext NOT NULL,
  /*첨부파일*/
  fname VARCHAR(50),
  fsize INT DEFAULT 0,
  fdown INT DEFAULT 0,
  ftype VARCHAR(10)
);

--gallery
CREATE TABLE gallery (
  gno INT PRIMARY KEY auto_increment,
  title VARCHAR(50) NOT NULL ,
  userid VARCHAR(20) NOT NULL ,
  regdate datetime DEFAULT CURRENT_TIMESTAMP,
  thumbup VARCHAR(5) DEFAULT 0,
  views VARCHAR(5) DEFAULT 0,
  contents mediumtext NOT NULL,
  /*첨부파일*/
  fname1 VARCHAR(50),
  fname2 VARCHAR(50),
  fname3 VARCHAR(50)
);