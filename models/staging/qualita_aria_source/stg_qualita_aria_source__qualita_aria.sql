with 

source as (

    select * from {{ source('qualita_aria_source', 'qualita_aria') }}

),

renamed as (

    select
        data,
        descrizione,
        previsione,
        tendenza

    from source

)

select * from renamed
