with meta_transformation as (
    select * from {{ source('transformation_meta_data', 'TRANSFORMATION_META') }}
),

final_2 as (
    select * from meta_transformation
)

select * from final_2