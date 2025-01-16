// TODO: a real explainer comment
resource "terraform_data" "resourcely_context_answers" {
  input = {
    "version": 1,

    "data": [
      {
        "$applies_to": "resource.aws_s3_bucket_public_access_block.resourcely-foobucket_ccYTHXSP6VpVTaLd",
        "applies_to_all_multi": ["x", "y"]
      },
      {
        "$applies_to": "resource.aws_s3_bucket.resourcely-foobucket_ccYTHXSP6VpVTaLd",
        "purpose": "microsite",
        "owner_email": "aladdin.almubayed@resourcely.io",
        "applies_to_all_multi": ["x", "y"],
        "global_multi_select": "multi-a",
        "tier": "1",
        "global_single_select": "global-b",
        "owner": "security",
        "global_text": "aaa",
        "regex": "resourcely_"
      }
    ]
  }
}
