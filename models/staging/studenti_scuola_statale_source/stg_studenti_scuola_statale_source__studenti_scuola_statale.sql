with 

source as (

    select * from {{ source('studenti_scuola_statale_source', 'studenti_scuola_statale') }}

),

renamed as (

    select
        indirizzoemailscuola,
        coalesce (regexp_contains(
            indirizzoemailscuola, '^[A-Za-z0-9._%+-]+@istruzione.it$'
        )
        = true,
        false) as is_valid_email_address

    from source

)

select * from renamed
