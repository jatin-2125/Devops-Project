resource "aws_lambda_function" "lambda" {
  function_name = var.function_name
  role          = var.role_arn
  handler       = "app.lambda_handler"
  runtime       = "python3.10"

  filename         = "${path.module}/../../lambda-code/lambda.zip"
  source_code_hash = filebase64sha256("${path.module}/../../lambda-code/lambda.zip")
}