resource "terraform_data" "resourcely_context_answers" {
  input = {
    "version": 1,

    "data": [
      {
        "$applies_to": "resource.aws_s3_bucket_public_access_block.resourcely-foobucket_ccYTHXSP6VpVTaLd",
        "applies_to_all_multi": ["x", "y"],
      },
      {
        "$applies_to": "resource.aws_s3_bucket.resourcely-foobucket_ccYTHXSP6VpVTaLd",
        "applies_to_all_multi": ["x", "y"],
        "purpose": "backup"
      }
    ]
  }
}
