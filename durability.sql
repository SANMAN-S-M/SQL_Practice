start transaction;

update accounts set balance =balance+2000 where account_id=3;

commit;

