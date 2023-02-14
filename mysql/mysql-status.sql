top memory by user:
select * from sys.memory_by_user_by_current_bytes;

total memory allocated:
select total_allocated as 'total_memory_allocated' from sys.memory_global_total;

file I/o activity:
select file, count_read, total_read, avg_read, count_write, total_written, avg_write, total, write_pct from sys.io_global_by_file_by_bytes;

using temp tables:
select * from sys.statements_with_temp_tables order by disk_tmp_tables desc limit 5;

full table scans:
select * from sys.schema_tables_with_full_table_scans;

unused indexes(till reboot):
select * from sys.schema_unused_indexes;

global waits by time:
select * from sys.waits_global_by_latency;

waits by user:
select * from sys.waits_by_user_by_latency;

innodb buffer page by schema:
select * from sys.innodb_buffer_stats_by_schema;

statement statistic by user:
select * from sys.user_summary_by_statement_type;