# Azure Storage Management Project
I have performed each and every step in this project to minimize the cost of storage by moving infrequently accessed files to lower-priced storage tiers. Additionally, I explored Azure Storage's protection mechanisms, including network access, authentication, authorization, and replication. Finally, I evaluated Azure Files for hosting on-premises file shares.

Architecture Diagram
![AzureStorageArchitecture](https://github.com/user-attachments/assets/a82d7428-7c2e-42ff-8ae3-effbc919c567)

Job Skills Covered:
Task 1: Create and configure a storage account.

Task 2: Create and configure secure blob storage.

Task 3: Create and configure secure Azure file storage.

## Task 1: Create and Configure a Storage Account
I created a storage account that uses geo-redundant storage without public access, ensuring cost efficiency and secure storage.

Steps:

Signed in to the Azure portal.

1. Created a new storage account under the resource group az104-rg7-lod43926459 with the following settings:

2. Performance: Standard

3. Redundancy: Geo-redundant storage

4. Configured the storage account to disable public access and enabled private access from selected virtual networks.

5. Configured Lifecycle Management to move blobs older than 30 days to cool storage.

5. Deployed and reviewed the storage account configurations, including redundancy settings, and configured firewall rules to limit access to specific IP addresses.

## Task 2: Create and Configure Secure Blob Storage
I created a secure blob storage container to store unstructured data, with an added time-based retention policy for enhanced security.

Steps:
1. Created a blob container named data with private access.

2. Set a time-based retention policy for 180 days.

3. Uploaded a test file into a folder named securitytest within the container.

4. Generated a SAS token to provide limited access to the uploaded file and confirmed that the public access level was set to private.

## Task 3: Create and Configure Azure File Storage

I created an Azure file share and explored its capabilities using the Azure Storage Browser.

Steps:

1. Created a file share named share1 with the Transaction optimized access tier.

2. Used Azure Storage Browser to upload files to the file share and organized them using directories.

3. Restricted network access to the storage account by creating a virtual network vnet1 and ensuring that only traffic from this network could access the storage resources.


### Cleanup Resources
After completing the project, I ensured to clean up the resources to avoid unnecessary costs.

Steps:

Finally I have Deleted the resource group using Azure PowerShell:
```
Remove-AzResourceGroup -Name az104-rg7-lod43926459
```
To Delete the resorce group
```
az group delete --name az104-rg7-lod43926459
```
