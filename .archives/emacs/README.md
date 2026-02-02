# Work flow

## Register a task
1. Capture: <cc> c
2. Plan later *decide when, how, properties later

## Plan
1. Open agenda: `<cc> a`
2. Schedule time of the tasks which are set up by today’s schedule: `<cc> <cs>`
3. If there is still room
  - Check unscheduled tasks, quick tasks
  - Change status
    - Status: TODAY : `<cc> <ct>` or `t (agenda mode)`
    - Schedule: tomorrow and time `<cc> <cs>`
    - Effort:  `<cc> <cx> e`
    - Tag:  `<cc> <cc>`
    - Property <cc> <cx> p

## Execute
  - Open agenda: `<cc> a`
  - Start timer(clock in) : `<cc> <cx> <ci>`
  - Go back to current clocked task: `<cc> <cx> <cj>`
  - Stop timer(clock in) : `<cc> <cx> <co>`
  - If you want to edit clock log
    - Just edit logs inside `:LOGBOOK:` and then `<cc> <cc>`
  - Make it done: `<cc> <ct>`
  - Clock report: `<cc> <cx> x` and selecting “clocktable”

## Review
  - Open agenda: `<cc> a`
  - Check expectation and time speeded : `<cc> <cx> <cc>` or `r (agenda mode)`

## Journal
  - Capture: `<cc> c`
  - Open Journal capture
  - Open Journal file: `<cc> f` or `<cx> r j`
  - Check clock: `<cc> <cc>` on `+BEGIN` property
  - Refile done tasks: `<cc> <cw>`
  - Open archive agenda `<cc> a A`
  - Git commit and push


## Agenda
- n, p: up, down
- Enter: jump to the task
- t: change status
- I: clock in
- O: clock out
- <cc> <cs>: schedule
- <cc> <cd>: deadline
- o: delete other window
- A: Reselect which agenda you will show
- R: clock report
- d: show day tasks on
- v: set agenda as daily, weekly, Monthly, Yearly
    - d: daily
    - w: weekly
    - m: monthly
    - y: yearly
    - l: toggle showing logs
    - c: show clock logs
- f: forward to next time span
- b: back to previous time span
- q: quit


## Check box
  - insert check box: `<cu> <cc> <cc>`
  - toggle check box: `<cc> <cc>`
  - insert check box statistics: `[/]` or `[%]`
  - update check box statistics: `<cc> #`


## Habits
- If you couldn't arhive a habit task, you just re-schedule it tomorrow. so it will not be shown on agenda view.

## Tips
- Make an achievable task. If it is a huge task, divide the task
- Make tasks clear to be done.
    - Bad: Shorten :Shorten process speed by 30%
    - Good:
        - [ ] List up how to shorten process speed
        - [ ] Choose one of the options
        - [ ] Implement
        - [ ] Calculate the speed of the process
        - [ ] Choose the next option
- If you can not make a task clearly, do whatever you come up with


## Sync with phone
- for pc: https://syncthing.net/
- for mobile: https://mobiussync.com/
- for orgmode in Iphone: https://www.beorgapp.com/

### Workflow
mobile -> pc
1. save your updates on beorg on your mobile
2. scan your updates on mobiussync on your mobile
3. scan your updates on syncthing on your pc
4. close and open your orgmode on your pc

pc -> mobile
1. save your updates on org mode in your pc
2. scan your updates on syncthing on your pc
3. scan your updates on mobiussync on your mobile
4. open your beorg in your mobile
