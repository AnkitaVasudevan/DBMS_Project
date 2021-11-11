-- User Access:
-- Creating users 

create user U1 with password '334569' createdb;
create user U2 with password '120087' createdb;
create user U3 with password '998223' createdb;
create user U4 with password '007754' createdb;
create user U5 with password '265431' createdb;

grant select on Movies to U1;
grant select on Region to U1;
grant insert on Users to U2;
grant all on Tickets to U3;
grant all on Booking to U3;
grant delete on Languages to U4;
grant delete, update on Show to u4;
grant all on Screen to U5;

