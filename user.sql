{{ config(materialized='view') }}

with src_user as
(
    select *
    from PROJECTMDP.PUBLIC.USER
)
select 
    pu.id, 
    pu.user_id, 
    pu.username, 
    pu.gender, 
    pu.employment, 
    pu.credit_card, 
    pu.subscription
from src_user as pu
