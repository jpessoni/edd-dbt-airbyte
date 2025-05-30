with dw_faturamento_ano as(

    select DATE_PART('year', purchased_at) as "Ano"
        ,sum(ap.price) as "Faturamento"
    from public.airbyte_purchases pur inner join airbyte_products ap
    on pur.productid = ap.id
    group by 1
    order by 1
)

select * from dw_faturamento_ano