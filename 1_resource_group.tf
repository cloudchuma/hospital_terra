resource "aws_resourcegroups_group" "this" {
  name = "hipaa-resources-group"

  resource_query {
    query = jsonencode({
      ResourceTypeFilters = ["AWS::AllSupported"]
      TagFilters = [{
        Key    = "Environment"
        Values = ["hipaa"]
      }]
    })
  }

  tags = {
    Name        = "hipaa-resources-group"
    Environment = "hipaa"
  }
}
