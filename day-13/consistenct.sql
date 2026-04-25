-- CONSISTENCY

start transaction;

update accounts set balance =balace - 6000
where account_id=1;

select * from accounts;

rollback;
