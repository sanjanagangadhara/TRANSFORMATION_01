with source_data as (
    select * from {{ source('google_data', 'INGESTION_SOURCE_RAW_DATA') }}
),

final as (
    select * from source_data
)

select * from final