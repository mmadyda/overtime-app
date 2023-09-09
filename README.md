## Overtime App

## Key requirement: company needs documentation that salarized employees did or did not get overtime each week

## Models:
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- x Bootstrap -> formatting 
- x Inons from glyphicons
- x Uptade the styles for forms

## TODOS:
- Integrate validation for phone attr in User
    # no spaces or dashes
    # exactly 10 characters
    # all characters have to be a number

