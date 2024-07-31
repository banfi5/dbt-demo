with 

source as (

    select * from {{ source('ambiente_inquinamento_source', 'ambiente_inquinamento') }}

),

renamed as (

    select
        id_amat,
        nome,
        id_arpa,
        inizio_operativita,
        fine_operativita,
        inquinanti,
        long_x_4326,
        lat_y_4326,
        location

    from source

)

select * from renamed
