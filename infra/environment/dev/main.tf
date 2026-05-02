module "iam" {
  source = "../../modules/iam"
}

module "lambda" {
  source        = "../../modules/lambda"
  function_name = "dev-lambda"
  role_arn      = module.iam.lambda_role_arn
}

module "apigateway" {
  source     = "../../modules/apigateway"
  lambda_arn = module.lambda.lambda_arn
}