# aws-deployment

There are two options to deploy MapR on AWS:

1. MapR Marketplace on AWS (You pay AWS including the MapR license):
https://aws.amazon.com/marketplace/seller-profile?id=802b0a25-877e-4b57-9007-a3fd284815a5


2. MapR deployment outside of AWS marketplace with CloudFormation Templates
(You pay AWS for infrastructure cost, and bring your own MapR license)

   You need to agree the terms first in order to use the AMI.
   Go to https://aws.amazon.com/marketplace/pp/B018T2N8P4?qid=1526418565389&sr=0-4&ref_=srh_res_product_title
   click on top-right corner where it says: "Continue to subscribe". Then accept the terms.
   
   Now you should be able to use that AMI even if you modify the CFT.
   
   Here is the CFT that is associated with MapR "Bring Your Own License (BYOL)" offering in MapR marketplace.
   https://s3-us-west-2.amazonaws.com/aws-marketplace-cf-templates-installer-6.0-1.8/CFT_byol.yml
   
   If you want to have the community edition deployed, use this template:
   https://s3-us-west-2.amazonaws.com/aws-marketplace-cf-templates-installer-6.0-1.8/CFT_community.yml
