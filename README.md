CRONTOL: Docker Boilerplate for Cron Scheduling
----------------------------------------

#### Environment Value

- Scheduling
    - CRON_MIN: Minutes
    - CRON_HOUR: Hour
    - CRON_DoM: Day of Month (1-31)
    - CRON_DoW: Day of Weeks (1-7)
    - CRON_MONTH: Month
- CRONJOBS_FILE: Path to where cronjob will be generated
- CRONJOB_COMMAND: Command that will be add to cronjob


#### HOW DOES IT WORKS ?

entrypoint.sh will parse environment value into cron command, put it on CRONJOBS_FILE and execute 
```
crontab CRONJOBS_FILE
```
