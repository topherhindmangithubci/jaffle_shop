with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        1 as one,
        1 as two,
        1 as three,
        1 as four,
        1 as five

    from source

)

select * from renamed
