with

customers as (

    select * from {{ ref('customers') }}

),

final as (
    
    select
        customer_id,
        customer_name,
        main_employee,
        total_revenue_in_usd,
        total_quantity

    from customers

    order by total_revenue_in_usd desc

    limit 3

)

select * from final