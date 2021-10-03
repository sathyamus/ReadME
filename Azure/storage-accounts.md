
### Storage accounts

 --> Performance : Standard / premium
 --> Account Kind : Storage V2 / Storage V1 / Blob / File
 --> Replication : 
        Locally-redundant storage (LRS)
        Zone-redundant storage (ZRS)
        Geo-redundant storage (GRS)
        Read-access geo-redundant storage (RA-GRS)
        Geo-zone-redundant storage (GZRS)
        Read-access geo-zone-redundant storage (RA-GZRS)
 --> Access Tier : Hot / Cold / Archive
 --> connectivity method

 --> Two default keys (root level -- full access)
 --> access to entire storage account (Blob, File, tables, Queues)
 --> container --> change access level
 --> Settings tab , access keys .. 2 copies, can re-generate too

 --> Shared Access Signature (SAS) .. Allowed services, Start and expiry date/time

 --> Azure AD .. Data layer level, Resource level
    --> Access control (IAM)

 --> Network access control
    --> Storage account -> container --> Firewall and virtual networks --> selected networks --> Virtual networks --> subnets