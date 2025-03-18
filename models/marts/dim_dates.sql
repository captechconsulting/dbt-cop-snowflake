with base_dates as (
    {{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('1990-01-01' as date)",
    end_date="cast('2050-01-01' as date)"
    ) }}
)

select distinct
    {{ dbt_utils.generate_surrogate_key(['date_day']) }} as sk_date,
    date_day as d_date,
    year(date_day) as d_year,
    month(date_day) as d_month,
    day(date_day) as d_day,
    dayname(date_day) as d_dayname,
    dayofweek(date_day) as d_dayofweek,
    quarter(date_day) as d_quarter,
    dayofyear(date_day) as d_dayofyear
from base_dates
