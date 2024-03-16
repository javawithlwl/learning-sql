create table dept (
  deptno int,
  dname  varchar(100),
  loc    varchar(100),
  constraint pk_dept primary key (deptno)
);

create table emp (
  empno    int,
  ename    varchar(100),
  job      varchar(100),
  mgr      int,
  hiredate date,
  sal      float,
  comm     float,
  deptno   int,
  constraint pk_emp primary key (empno),
  constraint fk_mgr foreign key (mgr) references emp (empno),
  constraint fk_deptno foreign key (deptno) references dept (deptno)
);

create table salgrade (
  grade int,
  losal int,
  hisal int,
  constraint pk_salgrade primary key (grade)
);
