--==========================================================
--==========================================================
\set ECHO all
drop schema if exists hw_es_multi_column_stats cascade;
create schema hw_es_multi_column_stats;
set current_schema = hw_es_multi_column_stats;

create table t1 (a int, b int, c int, d int) ;
create table t1r (a int, b int, c int, d int) ;

create table t1_1 (a int, b int, c int, d int) ;
create table t1r_1 (a int, b int, c int, d int) ;
insert into t1_1 values (1, 1, 1, 1),(2, 1, 1, 1), (3, 2, 1, 1),(4, 2, 1, 1), (5, 3, 2, 1),(6, 3, 2, 1),(7, 4, 2, 1),(8, 4, 2, 1),(13, 6, 2, 9);
insert into t1r_1 select * from t1_1;

create table t1_2 (a int, b int, c int, d int) ;
create table t1r_2 (a int, b int, c int, d int) ;
insert into t1_2 select * from t1_1;
insert into t1r_2 select * from t1_1;

create table t1_3 (a int, b int, c int, d int) ;
create table t1r_3 (a int, b int, c int, d int) ;
insert into t1_3 select * from t1_1;
insert into t1r_3 select * from t1_1;

create table t1_4 (a int, b int, c int, d int) ;
create table t1r_4 (a int, b int, c int, d int) ;
insert into t1_4 select * from t1_1;
insert into t1r_4 select * from t1_1;

create table t1_5(a int, b int, c int, d int) ;
create table t1r_5 (a int, b int, c int, d int) ;
insert into t1_5 select * from t1_1;
insert into t1r_5 select * from t1_1;

create table t1_6 (c1 int, c2 int, c3 int, c4 int, c5 int, c6 int, c7 int, c8 int, c9 int, c10 int, c11 int, c12 int, c13 int, c14 int, c15 int, c16 int, c17 int, c18 int, c19 int, c20 int, c21 int, c22 int, c23 int, c24 int, c25 int, c26 int, c27 int, c28 int, c29 int, c30 int, c31 int, c32 int, c33 int, c34 int, c35 int, c36 int);

create table t2 (a int, b int, c int, d int) ;
create table t2r (a int, b int, c int, d int) ;

create table t3 (a int, b varchar(255), c text, d char) ;
create table t3r (a int, b varchar(255), c text, d char) ;

create table t5 (a int, b int, c int, d int) 
partition by range (b)
(
partition p1 values less than (1),
partition p2 values less than (2),
partition p3 values less than (3),
partition p4 values less than (4),
partition p5 values less than (5),
partition p6 values less than (maxvalue)
);
create table t5r (a int, b int, c int, d int) 
partition by range (b)
(
partition p1 values less than (1),
partition p2 values less than (2),
partition p3 values less than (3),
partition p4 values less than (4),
partition p5 values less than (5),
partition p6 values less than (maxvalue)
);

create table t6 (a int, b int, c int, d int) ;
create table t6r (a int, b int, c int, d int) ;
insert into t6 values (1, 1, 1, 1), (2, 1, 1, 1), (3, 2, 1, 1), (4, 2, 1, 1), (5, 3, 2, 1), (6, 3, 2, 1), (7, 4, 2, 1),(8, 4, 2, 1);
insert into t6r select * from t6;

create index i1_t6 on t6 (b);
create index i1_t6r on t6r (b);
create index i2_t6 on t6 (c, a);
create index i2_t6r on t6r (c, a);

create table t7 (a int, b int, c int, d int) ;
create table t7r (a int, b int, c int, d int) ;
insert into t7 values (1, 1, 1, 1), (2, 1, 1, 1), (3, 2, 1, 1), (4, 2, 1, 1), (5, 3, 2, 1), (6, 3, 2, 1), (7, 4, 2, 1), (8, 4, 2, 1);
insert into t7r select * from t7;

create table t3_7 (a int, b int, c int, d int);
