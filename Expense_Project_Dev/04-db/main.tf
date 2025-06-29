module "db" {
  source = "terraform-aws-modules/rds/aws"

  identifier = "${var.project_name}-${var.environment}"

  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name  = "transactions"
  username = "root"
  port     = "3306"

  
  vpc_security_group_ids = [data.aws_ssm_parameter_db_sg_id.value]

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  
  
  # DB subnet group
  db_subnet_group_name = data.aws.aws_ssm_parameter_db_subnet_group_name

  # DB parameter group
  family = "mysql8.0"

  # DB option group
  major_engine_version = "8.0"
  
  skip_final_snapshot = true
  manage_master_user_password = false

  password = "ExpenseApp01"


  parameters = [
    {
      name  = "character_set_client"
      value = "utf8mb4"
    },
    {
      name  = "character_set_server"
      value = "utf8mb4"
    }
  ]

  options = [
    {
      option_name = "MARIADB_AUDIT_PLUGIN"

      option_settings = [
        {
          name  = "SERVER_AUDIT_EVENTS"
          value = "CONNECT"
        },
        {
          name  = "SERVER_AUDIT_FILE_ROTATIONS"
          value = "37"
        },
      ]
    },
  ]


  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}"
    }
  )

}