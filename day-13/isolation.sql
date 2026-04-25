-- Isolation

start transaction;

update accounts set balance =balance -500 where account_id=1;

select * from accounts where account_id=1;

set transaction isolation level read committed;

