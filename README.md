# DSDB_Project
This is the "Superproject" repository containing all the submodules for the DSBD University Project.

## Submodules
- [Server module](https://github.com/claudi47/DSBD_Server) (Central API Gateway, for request validation and forwarding)
- [Discord Bot module](https://github.com/claudi47/DSBD_Bot) (Discord Bot Client handling the user interaction logic)
- [Bot Stats & Settings module](https://github.com/claudi47/DSBD_Stats_Settings) (PAS module handling CSV parsing, BOT Admin Configuration and User Stats)

## Roadmap
- [x] Discord bot client logic
- [x] Transaction and Rollback System (with Fail-safe features)
- [x] Docker migration (with Docker Compose orchestration)
- [x] Complete HTTP -> Async Stream migration
  - [x] User/Betdata request/response stream
  - [x] CSV request/response stream
- [ ] Kubernetes migration
  - [x] Confluent Platform operator
  - [x] MongoDB operator
  - [ ] DSBD modules
- [ ] HTTP stats requests and processing
- [ ] Stats export from Kafka and HTTP endpoints to Prometheus
- [ ] Performance predictions (time-series data forecasting, probably using Prophet by FB)
