import pulumi
from pulumi_azure_native import resources, storage, web

# Create an Azure Resource Group
resource_group = resources.ResourceGroup("rg-vue2048-preprod")

# Create a static web app
static_site = web.StaticSite("stapp-vue2048-preprod",
                             repository_url="",
                             resource_group_name=resource_group.name,
                             sku=web.SkuDescriptionArgs(
                                 name="Free",
                                 tier="Free"
                             ),
                             tags={
                                 "Class": "EI8IT213",
                             }

                             )
