# docker-spark

A basic dockerfile for messing around with pyspark standalone.

* Spark version: `2.1.0`
* Python version: `3.5`

### Launch spark shell
`docker-compose run spark bin/spark-shell`

### Launch pyspark shell with ipython
`docker-compose run -e PYSPARK_PYTHON=ipython spark bin/pyspark`

### Run spark job
`docker-compose run spark bin/spark-submit scripts/word_count.py data/words.txt`
