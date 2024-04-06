# InTheGreen
Budgeting advice always starts with "save a month's worth of money" - but what if that's not possible for you right now, if you keep hitting late fees and overdraft fees? 

The intention of this app is to let you know if you're projected to go over budget between now and your next paycheck, so you can make choices to try to avoid overdraft fees and late fees.

Living in poverty is hard and stressful, and you can't actually budget your way out of it. But knowing what's going on with your money empowers you to make informed choices. 


## Developing
### Development dependencies
- You must have Docker installed on your local machine (you do not need Docker Desktop, although you might enjoy working with it more than the cli)
- On Mac you can install this with `brew install docker`
### Bringing up the application and dependencies
```bash
docker compose up
```

### Running commands in containers
To open a bash shell on the container:
```bash
docker compose run [service_name] bash
```
e.g., to run rubocop and rspec in the containers:
```bash
docker compose run app bash
```

### Linter
- We use rubocop - call `rubocop` to see style problems, `rubocop -a` to correct safe problems, `rubocop -A` to fix problems that could potentially cause an error
