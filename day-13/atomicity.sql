-- ATOMICITY

start transaction;

update accounts set balance=balance - 1000 where account_id=1;
update accounts set balance=balance + 1000 where account_id=2;

Rollback;
