select 
    account.account_id, 
    account.name, 
    sum(transaction.amount) as total_amount
from 
    transaction
inner join
    account ON transaction.account_id = account.account_id
where 
    extract(month from transaction.transaction_date) = 5
group by 
    account.account_id, account.name;