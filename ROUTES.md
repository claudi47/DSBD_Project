# Kafka routes

## Bot
### Output ->
- #### Bet_data_service
  - bet-data-apply
  - bet-data-finish
  - user-limit-auth

- #### User_service
  - user-auth
  - search-entry

- #### csv_gen_service
  - csv-gen

### Input <-
- #### User_service
  - user-auth-reply
  - csv-gen-reply
- #### Bet_data_service
  - csv-attachment


## Bet_data_service
### Output ->
- #### Bot
  - csv-attachment
- #### User_service
  - user-limit-auth-reply
### Input <-
- #### Bot
  - bet-data-apply
  - bet-data-finish
  - user-limit-auth
- #### User_service
  - user-limit-auth-retrieve

## User_service
### Output ->
- #### Bot
  - user-auth-reply
- #### Bet_data_service
  - user-limit-auth-retrieve
### Input <-
- #### Bot
  - user-auth
- #### Bet_data_service
  - user-limit-auth-reply

## Csv_gen
### Output ->
- #### Bot
  - csv-gen-reply
### Input <-
- #### Bot
  - csv-gen
