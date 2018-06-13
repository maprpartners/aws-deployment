# aws-deployment
This is for MapR deployment outside of AWS marketplace

 
   Here is the CFT that is associated with MapR "Bring Your Own License (BYOL)" offering in MapR marketplace.
   https://s3-us-west-2.amazonaws.com/aws-marketplace-cf-templates-installer-6.0-1.8/CFT_byol.yml
   
   If you want to have the community edition deployed, use this template:
   https://s3-us-west-2.amazonaws.com/aws-marketplace-cf-templates-installer-6.0-1.8/CFT_community.yml
 
   If you don’t want to deploy through the Marketplace, you need to agree the terms first in order to use the AMI.
   Go to https://aws.amazon.com/marketplace/pp/B018T2N8P4?qid=1526418565389&sr=0-4&ref_=srh_res_product_title
   click on top-right corner where it says: "Continue to subscribe". Then accept the terms.
 
   Now you should be able to use that AMI even if you modify the CFT.
