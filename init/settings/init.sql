set hive.enforce.bucketing=true;
set hive.enforce.sorting=true;
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions.pernode=1000000;
set hive.exec.max.dynamic.partitions=1000000;
set hive.exec.max.created.files=1000000;
set hive.map.aggr=true;
set hive.optimize.bucketmapjoin=true;
set hive.optimize.bucketmapjoin.sortedmerge=true;
set hive.mapred.reduce.tasks.speculative.execution=false;
set hive.auto.convert.join=true;
set hive.auto.convert.sortmerge.join=true;
set hive.auto.convert.sortmerge.join.noconditionaltask=true;
set hive.auto.convert.join.noconditionaltask=true;
set hive.auto.convert.join.noconditionaltask.size=10000000000;
set hive.optimize.reducededuplication.min.reducer=1;
set hive.optimize.mapjoin.mapreduce=true;

set mapred.reduce.parallel.copies=30;
set mapred.reduce.tasks=16;
set mapred.job.shuffle.input.buffer.percent=0.5;
set mapred.job.reduce.input.buffer.percent=0.2;
set mapred.map.child.java.opts=-server -Xmx2248m -Djava.net.preferIPv4Stack=true;
set mapred.reduce.child.java.opts=-server -Xmx4500m -Djava.net.preferIPv4Stack=true;
set mapreduce.map.memory.mb=3072;
set mapreduce.reduce.memory.mb=6144;
set hive.optimize.tez=true;
