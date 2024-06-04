select 
    bank.bank_code, 
    bank.name, 
    sum(transaction.amount) as total_amount
from 
    transaction
inner join
    bank ON transaction.bank_id = bank.bank_code
where 
    extract(month from transaction.transaction_date) = 5
group by 
    bank.bank_code, bank.name;