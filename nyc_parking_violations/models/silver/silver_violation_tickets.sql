select violations.summons_number,
  violations.issue_date,
  violations.violation_code,
  violations.is_manhattan_96th_st_below,
  violations.issuing_agency,
  violations.violation_location,
  violations.violation_precinct,
  violations.issuer_precinct,
  violations.issuer_code,
  violations.issuer_command,
  violations.issuer_squad,
  violations.violation_time,
  violations.violation_county,
  violations.violation_legal_code,
  codes.fee_usd
from {{ref('silver_parking_violations')}} AS violations
left join {{ref('silver_parking_violation_codes')}} as codes 
  on violations.violation_code = codes.violation_code 
    and violations.is_manhattan_96th_st_below = codes.is_manhattan_96th_st_below