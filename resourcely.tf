// TODO: a real explainer comment
resource "terraform_data" "resourcely_context_answers" {
  input = {
    "version": 1,

    "data": [
      {
        "$applies_to": [
          "resource.aws_s3_bucket.test_AWy9kBEPqvC8u326",
          "resource.aws_s3_bucket_public_access_block.test_AWy9kBEPqvC8u326",
          "resource.aws_s3_bucket_ownership_controls.test_AWy9kBEPqvC8u326",
          "resource.aws_s3_bucket_versioning.test_AWy9kBEPqvC8u326"
        ],
        "applies_to_all_multi": "x",
        "owner": "security",
        "purpose": "backup"
      }
    ]
  }
}
