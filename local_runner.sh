#!/bin/sh
rm -rf path/of/output;
sbt assembly;
spark-submit \
--deploy-mode client \
--driver-memory 2G \
--name DataUsage \
target/scala-2.11/SPARK_HIVE_ETL.jar src/main/resources/log4j.properties src/main/resources/application.conf dev