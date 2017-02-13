# docker-spark

A basic dockerfile for messing around with pyspark standalone.

* Spark version: `2.1.0`
* Python version: `3.5`

### Launch pyspark shell
`docker-compose run spark /spark/bin/pyspark`

### Run spark job
`docker-comopse run spark /spark/bin/spark-submit scripts/my-job.py`
