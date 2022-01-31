# DSDB_Project
This is the "Superproject" repository containing all the submodules for the DSBD University Project.

## Submodules
- [Bet data service module](https://github.com/claudi47/DSBD_BetDataService/tree/test)
- [CSV generation module](https://github.com/lauralex/DSBD_csv_gen/tree/test)
- [User service module](https://github.com/lauralex/DSBD_UserService)
- [Discord Bot module](https://github.com/claudi47/DSBD_Bot/tree/test) (Discord Bot Client handling the user interaction logic)
- [Time series prediction module](https://github.com/lauralex/DSBD_Predictor/tree/test)

## Roadmap
- [x] Discord bot client logic
- [x] Transaction and Rollback System (with Fail-safe features)
- [x] Docker migration (with Docker Compose orchestration)
- [x] Complete HTTP -> Async Stream migration
  - [x] User/Betdata request/response stream
  - [x] CSV request/response stream
- [x] Kubernetes migration
  - [x] Confluent Platform operator
  - [x] MongoDB operator
  - [x] DSBD modules
- [x] HTTP stats requests and processing
- [x] Stats export from Kafka and HTTP endpoints to Prometheus
- [x] Performance predictions (time-series data forecasting, probably using Prophet by FB)
  - [x] First analysis and draft implementation
  - [x] Tested implementation
  - [x] Release
- [ ] Final adjustments
