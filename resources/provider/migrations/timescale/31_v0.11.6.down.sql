-- Resource: athena.data_catalogs
DROP TABLE IF EXISTS aws_athena_data_catalog_database_table_columns;
DROP TABLE IF EXISTS aws_athena_data_catalog_database_table_partition_keys;
DROP TABLE IF EXISTS aws_athena_data_catalog_database_tables;
DROP TABLE IF EXISTS aws_athena_data_catalog_databases;
DROP TABLE IF EXISTS aws_athena_data_catalogs;

-- Resource: athena.work_groups
DROP TABLE IF EXISTS aws_athena_work_group_prepared_statements;
DROP TABLE IF EXISTS aws_athena_work_group_query_executions;
DROP TABLE IF EXISTS aws_athena_work_group_named_queries;
DROP TABLE IF EXISTS aws_athena_work_groups;

-- Resource: sqs.queues
TRUNCATE TABLE aws_sqs_queues;
ALTER TABLE IF EXISTS aws_sqs_queues ALTER COLUMN created_timestamp TYPE int;
ALTER TABLE IF EXISTS aws_sqs_queues ALTER COLUMN last_modified_timestamp TYPE int;

-- Resource: ec2.images
TRUNCATE TABLE aws_ec2_images CASCADE;
ALTER TABLE IF EXISTS aws_ec2_images ALTER COLUMN creation_date TYPE TEXT;

-- Resource: ec2.instances
TRUNCATE TABLE aws_ec2_instance_elastic_gpu_associations CASCADE;
ALTER TABLE IF EXISTS aws_ec2_instance_elastic_gpu_associations ALTER COLUMN elastic_gpu_association_time TYPE TEXT;

-- Resource: lambda.layers
TRUNCATE TABLE aws_lambda_layers CASCADE;
ALTER TABLE IF EXISTS aws_lambda_layers ALTER COLUMN latest_matching_version_created_date TYPE TEXT;
TRUNCATE TABLE aws_lambda_layer_versions CASCADE;
ALTER TABLE IF EXISTS aws_lambda_layer_versions ALTER COLUMN created_date TYPE TEXT;

-- Resource: lambda.functions
TRUNCATE TABLE aws_lambda_functions CASCADE;
ALTER TABLE IF EXISTS aws_lambda_functions ALTER COLUMN last_modified TYPE TEXT;
TRUNCATE TABLE aws_lambda_function_versions CASCADE;
ALTER TABLE IF EXISTS aws_lambda_function_versions ALTER COLUMN last_modified TYPE TEXT;
TRUNCATE TABLE aws_lambda_function_concurrency_configs CASCADE;
ALTER TABLE IF EXISTS aws_lambda_function_concurrency_configs ALTER COLUMN last_modified TYPE TEXT;