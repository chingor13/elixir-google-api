
2.0Ú
Cloud Storage JSON APIv1?Stores and retrieves potentially large, immutable data objects."$https://developers.google.com/terms/*
Googlehttps://google.com2O
 Creative Commons Attribution 3.0+http://creativecommons.org/licenses/by/3.0/www.googleapis.com"/*httpsBôáÃ
)/resumable/upload/storage/v1/b/{bucket}/oû"Â
objects!Stores a new object and metadata.* storage.objects.insert.resumable:multipart/form-dataBñ
ìê"çpathsName of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any."bucket*stringB…
∆√¿queryùIf set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded."contentEncoding2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBπ
∂≥∞queryíResource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any. Limited availability; usable only by enabled projects."
kmsKeyName2stringBà
ÖÇˇqueryÁName of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."name2stringB€
ÿ’“query9Apply a predefined set of access controls to this object."predefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bº
π∂≥queryÄSet of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringBU
SQOquery!Upload type. Must be "resumable"."
uploadType2string™
resumable
B(
&
$bodybody*
#/definitions/ObjectJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp«
/storage/v1/bµÒ
buckets0Retrieves a list of buckets for a given project.*storage.buckets.listBA
?=;queryA valid API project identifier."project2stringB¥
±Æ´queryÉMaximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller."
maxResults2integerR1000
Bz
xvtqueryXA previously-returned page token representing part of the larger set of results to view."	pageToken2stringB\
ZXVquery=Filter results to buckets whose names begin with this prefix."prefix2stringBg
ecaquery/Set of properties to return. Defaults to noAcl."
projection2string™full
™noAcl
BN
LJHquery*The project to be billed for this request."userProject2stringJ;
9
2002
0
Successful response

#/definitions/Bucketsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write"à	
bucketsCreates a new bucket.*storage.buckets.insertBA
?=;queryA valid API project identifier."project2stringBø
ºπ∂query9Apply a predefined set of access controls to this bucket."predefinedAcl2string™authenticatedRead
™
private
™projectPrivate
™publicRead
™publicReadWrite
B˜
ÙÒÓqueryHApply a predefined set of default object access controls to this bucket."predefinedDefaultObjectAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
BŒ
À»≈queryíSet of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full."
projection2string™full
™noAcl
BN
LJHquery*The project to be billed for this request."userProject2stringB(
&
$bodybody*
#/definitions/BucketJ:
8
2001
/
Successful response

#/definitions/Bucketb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp '
/storage/v1/b/{bucket}Ø'÷
buckets*Returns metadata for the specified bucket.*storage.buckets.getB1
/-"+pathName of a bucket."bucket*stringB¨
©¶£query{Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value."ifMetagenerationMatch2stringB∑
¥±ÆqueryÇMakes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBg
ecaquery/Set of properties to return. Defaults to noAcl."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ:
8
2001
/
Successful response

#/definitions/Bucketb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeÕ
bucketsâUpdates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.*storage.buckets.updateB1
/-"+pathName of a bucket."bucket*stringB¨
©¶£query{Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value."ifMetagenerationMatch2stringB∑
¥±ÆqueryÇMakes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBø
ºπ∂query9Apply a predefined set of access controls to this bucket."predefinedAcl2string™authenticatedRead
™
private
™projectPrivate
™publicRead
™publicReadWrite
B˜
ÙÒÓqueryHApply a predefined set of default object access controls to this bucket."predefinedDefaultObjectAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bf
db`query.Set of properties to return. Defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/BucketJ:
8
2001
/
Successful response

#/definitions/Bucketb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control*ÿ
buckets$Permanently deletes an empty bucket.*storage.buckets.deleteB1
/-"+pathName of a bucket."bucket*stringBw
usqqueryIIf set, only deletes the bucket if its metageneration matches this value."ifMetagenerationMatch2stringBÅ
}{queryPIf set, only deletes the bucket if its metageneration does not match this value."ifMetagenerationNotMatch2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeBÚ
bucketsØUpdates a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate. This method supports patch semantics.*storage.buckets.patchB1
/-"+pathName of a bucket."bucket*stringB¨
©¶£query{Makes the return of the bucket metadata conditional on whether the bucket's current metageneration matches the given value."ifMetagenerationMatch2stringB∑
¥±ÆqueryÇMakes the return of the bucket metadata conditional on whether the bucket's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBø
ºπ∂query9Apply a predefined set of access controls to this bucket."predefinedAcl2string™authenticatedRead
™
private
™projectPrivate
™publicRead
™publicReadWrite
B˜
ÙÒÓqueryHApply a predefined set of default object access controls to this bucket."predefinedDefaultObjectAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bf
db`query.Set of properties to return. Defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/BucketJ:
8
2001
/
Successful response

#/definitions/Bucketb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp’	
/storage/v1/b/{bucket}/acl∂	‡
bucketAccessControls.Retrieves ACL entries on the specified bucket.*!storage.bucketAccessControls.listB1
/-"+pathName of a bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJH
F
200?
=
Successful response&
$
"#/definitions/BucketAccessControlsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control"ö
bucketAccessControls0Creates a new ACL entry on the specified bucket.*#storage.bucketAccessControls.insertB1
/-"+pathName of a bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/BucketAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/BucketAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp…
#/storage/v1/b/{bucket}/acl/{entity}°Æ
bucketAccessControlsGReturns the ACL entry for the specified entity on the specified bucket.* storage.bucketAccessControls.getB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJG
E
200>
<
Successful response%
#
!#/definitions/BucketAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlŒ
bucketAccessControls-Updates an ACL entry on the specified bucket.*#storage.bucketAccessControls.updateB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/BucketAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/BucketAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control*ñ
bucketAccessControlsSPermanently deletes the ACL entry for the specified entity on the specified bucket.*#storage.bucketAccessControls.deleteB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlBÕ
bucketAccessControls-Patches an ACL entry on the specified bucket.*"storage.bucketAccessControls.patchB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/BucketAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/BucketAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpﬂ
'/storage/v1/b/{bucket}/defaultObjectAcl≥¿
defaultObjectAccessControls=Retrieves default object ACL entries on the specified bucket.*(storage.defaultObjectAccessControls.listB1
/-"+pathName of a bucket."bucket*stringBó
îëéqueryfIf present, only return default ACL listing if the bucket's current metageneration matches this value."ifMetagenerationMatch2stringB¶
£†ùqueryrIf present, only return default ACL listing if the bucket's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJH
F
200?
=
Successful response&
$
"#/definitions/ObjectAccessControlsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control"∑
defaultObjectAccessControls?Creates a new default object ACL entry on the specified bucket.**storage.defaultObjectAccessControls.insertB1
/-"+pathName of a bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp»
0/storage/v1/b/{bucket}/defaultObjectAcl/{entity}ìÀ
defaultObjectAccessControlsVReturns the default object ACL entry for the specified entity on the specified bucket.*'storage.defaultObjectAccessControls.getB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlÍ
defaultObjectAccessControls;Updates a default object ACL entry on the specified bucket.**storage.defaultObjectAccessControls.updateB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control*≥
defaultObjectAccessControlsbPermanently deletes the default object ACL entry for the specified entity on the specified bucket.**storage.defaultObjectAccessControls.deleteB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlBÈ
defaultObjectAccessControls;Patches a default object ACL entry on the specified bucket.*)storage.defaultObjectAccessControls.patchB1
/-"+pathName of a bucket."bucket*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpù
/storage/v1/b/{bucket}/iam˛
í
buckets/Returns an IAM policy for the specified bucket.*storage.buckets.getIamPolicyB1
/-"+pathName of a bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ:
8
2001
/
Successful response

#/definitions/Policyb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write∞
buckets/Updates an IAM policy for the specified bucket.*storage.buckets.setIamPolicyB1
/-"+pathName of a bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/PolicyJ:
8
2001
/
Successful response

#/definitions/Policyb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpç
*/storage/v1/b/{bucket}/iam/testPermissionsﬁ•
buckets\Tests a set of permissions on the given bucket to see which, if any, are held by the caller.*"storage.buckets.testIamPermissionsB1
/-"+pathName of a bucket."bucket*stringBJ
HFDqueryPermissions to test."permissions2arrayB
stringJmultiBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJN
L
200E
C
Successful response,
*
(#/definitions/TestIamPermissionsResponseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÇ
*/storage/v1/b/{bucket}/lockRetentionPolicy”"ö
buckets#Locks retention policy on a bucket.*#storage.buckets.lockRetentionPolicyB1
/-"+pathName of a bucket."bucket*stringBñ
ìêçquerycMakes the operation conditional on whether bucket's current metageneration matches the given value."ifMetagenerationMatch2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ:
8
2001
/
Successful response

#/definitions/Bucketb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpè
*/storage/v1/b/{bucket}/notificationConfigs‡≈
notificationsBRetrieves a list of notification subscriptions for a given bucket.*storage.notifications.listBF
DB"@path&Name of a Google Cloud Storage bucket."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJA
?
2008
6
Successful response

#/definitions/Notificationsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write"ﬂ
notifications7Creates a notification subscription for a given bucket.*storage.notifications.insertBF
DB"@path&The parent bucket of the notification."bucket*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB.
,
*bodybody*
#/definitions/NotificationJ@
>
2007
5
Successful response

#/definitions/Notificationb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp•
9/storage/v1/b/{bucket}/notificationConfigs/{notification}Á⁄
notifications"View a notification configuration.*storage.notifications.getBF
DB"@path&The parent bucket of the notification."bucket*stringB5
31"/pathNotification ID"notification*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ@
>
2007
5
Successful response

#/definitions/Notificationb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write*—
notifications0Permanently deletes a notification subscription.*storage.notifications.deleteBF
DB"@path&The parent bucket of the notification."bucket*stringBG
EC"Apath!ID of the notification to delete."notification*stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÃ'
/storage/v1/b/{bucket}/oØ'–
objects2Retrieves a list of objects matching the criteria.*storage.objects.listBP
NL"Jpath0Name of the bucket in which to look for objects."bucket*stringB÷
”–Õquery∞Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted."	delimiter2stringB∏
µ≤ØqueryÇIf true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes."includeTrailingDelimiter2booleanB†
ùöóqueryÔMaximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller."
maxResults2integerR1000
Bz
xvtqueryXA previously-returned page token representing part of the larger set of results to view."	pageToken2stringB\
ZXVquery=Filter results to objects whose names begin with this prefix."prefix2stringBg
ecaquery/Set of properties to return. Defaults to noAcl."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB¶
£†ùqueryÄIf true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning."versions2booleanJ;
9
2002
0
Successful response

#/definitions/Objectsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write"£
objects!Stores a new object and metadata.*storage.objects.insert:application/octet-streamBñ
ìê"çpathsName of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any."bucket*stringB…
∆√¿queryùIf set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded."contentEncoding2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBπ
∂≥∞queryíResource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any. Limited availability; usable only by enabled projects."
kmsKeyName2stringBà
ÖÇˇqueryÁName of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."name2stringB€
ÿ’“query9Apply a predefined set of access controls to this object."predefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bº
π∂≥queryÄSet of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/ObjectJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp⁄
/storage/v1/b/{bucket}/o/watch∑"˛
objects-Watch for changes on all objects in a bucket.*storage.objects.watchAllBP
NL"Jpath0Name of the bucket in which to look for objects."bucket*stringB÷
”–Õquery∞Returns results in a directory-like mode. items will contain only objects whose names, aside from the prefix, do not contain delimiter. Objects whose names, aside from the prefix, contain delimiter will have their name, truncated after the delimiter, returned in prefixes. Duplicate prefixes are omitted."	delimiter2stringB∏
µ≤ØqueryÇIf true, objects that end in exactly one instance of delimiter will have their metadata included in items in addition to prefixes."includeTrailingDelimiter2booleanB†
ùöóqueryÔMaximum number of items plus prefixes to return in a single page of responses. As duplicate prefixes are omitted, fewer total results may be returned than requested. The service will use this parameter or 1,000 items, whichever is smaller."
maxResults2integerR1000
Bz
xvtqueryXA previously-returned page token representing part of the larger set of results to view."	pageToken2stringB\
ZXVquery=Filter results to objects whose names begin with this prefix."prefix2stringBg
ecaquery/Set of properties to return. Defaults to noAcl."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB¶
£†ùqueryÄIf true, lists all versions of an object as distinct results. The default is false. For more information, see Object Versioning."versions2booleanB-
+
)resourcebody*
#/definitions/ChannelJ;
9
2002
0
Successful response

#/definitions/Channelb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpœ=
!/storage/v1/b/{bucket}/o/{object}©=à
objects$Retrieves an object or its metadata.*storage.objects.getBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBg
ecaquery/Set of properties to return. Defaults to noAcl."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write∫
objectsUpdates an object's metadata.*storage.objects.updateBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringB€
ÿ’“query9Apply a predefined set of access controls to this object."predefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bf
db`query.Set of properties to return. Defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/ObjectJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control*ı
objectsêDeletes an object and its metadata. Deletions are permanent if versioning is not enabled for the bucket, or if the generation parameter is used.*storage.objects.deleteBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBô
ñìêquerysIf present, permanently deletes a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeB∞
objectsPatches an object's metadata.*storage.objects.patchBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringB€
ÿ’“query9Apply a predefined set of access controls to this object."predefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bf
db`query.Set of properties to return. Defaults to full."
projection2string™full
™noAcl
Bj
hfdqueryFThe project to be billed for this request, for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/ObjectJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp∏
%/storage/v1/b/{bucket}/o/{object}/acléå
objectAccessControls.Retrieves ACL entries on the specified object.*!storage.objectAccessControls.listB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJH
F
200?
=
Successful response&
$
"#/definitions/ObjectAccessControlsb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control"∆
objectAccessControls0Creates a new ACL entry on the specified object.*#storage.objectAccessControls.insertB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÑ!
./storage/v1/b/{bucket}/o/{object}/acl/{entity}— ⁄
objectAccessControlsGReturns the ACL entry for the specified entity on the specified object.* storage.objectAccessControls.getB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control˙
objectAccessControls-Updates an ACL entry on the specified object.*#storage.objectAccessControls.updateB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_control*¬
objectAccessControlsSPermanently deletes the ACL entry for the specified entity on the specified object.*#storage.objectAccessControls.deleteB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlB˘
objectAccessControls-Patches an ACL entry on the specified object.*"storage.objectAccessControls.patchB1
/-"+pathName of a bucket."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringB¥
±Æ"´pathêThe entity holding the permission. Can be user-userId, user-emailAddress, group-groupId, group-emailAddress, allUsers, or allAuthenticatedUsers."entity*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB5
3
1bodybody*#
!#/definitions/ObjectAccessControlJG
E
200>
<
Successful response%
#
!#/definitions/ObjectAccessControlb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpº
%/storage/v1/b/{bucket}/o/{object}/iamí‹
objects/Returns an IAM policy for the specified object.*storage.objects.getIamPolicyBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJ:
8
2001
/
Successful response

#/definitions/Policyb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_write˙
objects/Updates an IAM policy for the specified object.*storage.objects.setIamPolicyBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/PolicyJ:
8
2001
/
Successful response

#/definitions/Policyb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp‚

5/storage/v1/b/{bucket}/o/{object}/iam/testPermissions®
Ô
objects\Tests a set of permissions on the given object to see which, if any, are held by the caller.*"storage.objects.testIamPermissionsBO
MK"Ipath/Name of the bucket in which the object resides."bucket*stringBô
ñì"êpathvName of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."object*stringBJ
HFDqueryPermissions to test."permissions2arrayB
stringJmultiBç
äáÑquerygIf present, selects a specific revision of this object (as opposed to the latest version, the default)."
generation2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringJN
L
200E
C
Successful response,
*
(#/definitions/TestIamPermissionsResponseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp™
?/storage/v1/b/{destinationBucket}/o/{destinationObject}/composeÊ"≠
objectsMConcatenates a list of existing objects into a new object in the same bucket.*storage.objects.composeB_
]["Ypath4Name of the bucket in which to store the new object."destinationBucket*stringB®
•¢"üpathzName of the new object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."destinationObject*stringBÒ
ÓÎËqueryDApply a predefined set of access controls to the destination object."destinationPredefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
BÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringBÇ
ˇ¸˘query€Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any."
kmsKeyName2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB0
.
,bodybody*
#/definitions/ComposeRequestJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÙ
`/storage/v1/b/{sourceBucket}/o/{sourceObject}/copyTo/b/{destinationBucket}/o/{destinationObject}è"÷
objectsNCopies a source object to a destination object. Optionally overrides metadata.*storage.objects.copyB\
ZX"Vpath6Name of the bucket in which to find the source object."sourceBucket*stringB¶
£†"ùpath}Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."sourceObject*stringBÑ
Å˛"˚path’Name of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any.For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."destinationBucket*stringB∑
¥±"ÆpathàName of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any."destinationObject*stringBÒ
ÓÎËqueryDApply a predefined set of access controls to the destination object."destinationPredefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
B¯
ıÚÔquery Makes the operation conditional on whether the destination object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB±
Æ´®queryÄMakes the operation conditional on whether the destination object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringB§
°ûõquerysMakes the operation conditional on whether the destination object's current metageneration matches the given value."ifMetagenerationMatch2stringBÆ
´®•queryzMakes the operation conditional on whether the destination object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBù
öóîqueryjMakes the operation conditional on whether the source object's current generation matches the given value."ifSourceGenerationMatch2stringBß
§°ûqueryqMakes the operation conditional on whether the source object's current generation does not match the given value."ifSourceGenerationNotMatch2stringB•
¢üúquerynMakes the operation conditional on whether the source object's current metageneration matches the given value."ifSourceMetagenerationMatch2stringBØ
¨©¶queryuMakes the operation conditional on whether the source object's current metageneration does not match the given value."ifSourceMetagenerationNotMatch2stringBº
π∂≥queryÄSet of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full."
projection2string™full
™noAcl
Bô
ñìêquerymIf present, selects a specific revision of the source object (as opposed to the latest version, the default)."sourceGeneration2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/ObjectJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpË%
c/storage/v1/b/{sourceBucket}/o/{sourceObject}/rewriteTo/b/{destinationBucket}/o/{destinationObject}Ä%"«#
objectsPRewrites a source object to a destination object. Optionally overrides metadata.*storage.objects.rewriteB\
ZX"Vpath6Name of the bucket in which to find the source object."sourceBucket*stringB¶
£†"ùpath}Name of the source object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."sourceObject*stringB°
ûõ"òpathsName of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any."destinationBucket*stringBö
óî"ëpathÎName of the new object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."destinationObject*stringBç
äáÑquery€Resource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any."destinationKmsKeyName2stringBÒ
ÓÎËqueryDApply a predefined set of access controls to the destination object."destinationPredefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
BÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringB§
°ûõquerysMakes the operation conditional on whether the destination object's current metageneration matches the given value."ifMetagenerationMatch2stringBÆ
´®•queryzMakes the operation conditional on whether the destination object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBù
öóîqueryjMakes the operation conditional on whether the source object's current generation matches the given value."ifSourceGenerationMatch2stringBß
§°ûqueryqMakes the operation conditional on whether the source object's current generation does not match the given value."ifSourceGenerationNotMatch2stringB•
¢üúquerynMakes the operation conditional on whether the source object's current metageneration matches the given value."ifSourceMetagenerationMatch2stringBØ
¨©¶queryuMakes the operation conditional on whether the source object's current metageneration does not match the given value."ifSourceMetagenerationNotMatch2stringBâ
ÜÉÄquery‘The maximum number of bytes that will be rewritten per rewrite request. Most callers shouldn't need to specify this parameter - it is primarily in place to support testing. If specified the value must be an integral multiple of 1 MiB (1048576). Also, this only applies to requests where the source and destination span locations and/or storage classes. Finally, this value must not change across rewrite calls else you'll get an error that the rewriteToken is invalid."maxBytesRewrittenPerCall2stringBº
π∂≥queryÄSet of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full."
projection2string™full
™noAcl
B‹
Ÿ÷”query≥Include this field (from the previous rewrite response) on each rewrite request after the first one, until the rewrite response 'done' flag is true. Calls that provide a rewriteToken can omit all other request fields, but if included those fields must match the values provided in the first rewrite request."rewriteToken2stringBô
ñìêquerymIf present, selects a specific revision of the source object (as opposed to the latest version, the default)."sourceGeneration2stringBs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringB(
&
$bodybody*
#/definitions/ObjectJC
A
200:
8
Successful response!

#/definitions/RewriteResponseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÕ
/storage/v1/channels/stopØ"ˆ
channels,Stop watching resources through this channel*storage.channels.stopB-
+
)resourcebody*
#/definitions/ChannelJ 

200

Successful responseb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpÑ
//storage/v1/projects/{projectId}/serviceAccount–ó
projectsMGet the email address of this project's Google Cloud Storage service account.*#storage.projects.serviceAccount.getB-
+)"'path
Project ID"	projectId*stringBN
LJHquery*The project to be billed for this request."userProject2stringJB
@
2009
7
Successful response 

#/definitions/ServiceAccountb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbF
D
Oauth2:
8https://www.googleapis.com/auth/cloud-platform.read-onlybE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbB
@
Oauth26
4https://www.googleapis.com/auth/devstorage.read_onlybC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIp¶
/upload/storage/v1/b/{bucket}/oÇ"…
objects!Stores a new object and metadata.*storage.objects.insert.simple:multipart/form-dataBñ
ìê"çpathsName of the bucket in which to store the new object. Overrides the provided object metadata's bucket value, if any."bucket*stringB…
∆√¿queryùIf set, sets the contentEncoding property of the final object to this value. Setting this parameter is equivalent to setting the contentEncoding metadata property. This can be useful when uploading an object with uploadType=media to indicate the encoding of the content being uploaded."contentEncoding2stringBÏ
ÈÊ„queryæMakes the operation conditional on whether the object's current generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object."ifGenerationMatch2stringB•
¢üúqueryÙMakes the operation conditional on whether the object's current generation does not match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object."ifGenerationNotMatch2stringBò
ïíèquerygMakes the operation conditional on whether the object's current metageneration matches the given value."ifMetagenerationMatch2stringB¢
üúôquerynMakes the operation conditional on whether the object's current metageneration does not match the given value."ifMetagenerationNotMatch2stringBπ
∂≥∞queryíResource name of the Cloud KMS key, of the form projects/my-project/locations/global/keyRings/my-kr/cryptoKeys/my-key, that will be used to encrypt the object. Overrides the object metadata's kms_key_name value, if any. Limited availability; usable only by enabled projects."
kmsKeyName2stringBà
ÖÇˇqueryÁName of the object. Required when the object metadata is not otherwise provided. Overrides the object metadata's name value, if any. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts."name2stringB€
ÿ’“query9Apply a predefined set of access controls to this object."predefinedAcl2string™authenticatedRead
™bucketOwnerFullControl
™bucketOwnerRead
™
private
™projectPrivate
™publicRead
Bº
π∂≥queryÄSet of properties to return. Defaults to noAcl, unless the object resource specifies the acl property, when it defaults to full."
projection2string™full
™noAcl
Bs
qomqueryOThe project to be billed for this request. Required for Requester Pays buckets."userProject2stringBU
SQOquery!Upload type. Must be "multipart"."
uploadType2string™
multipart
B@
>
<
Object metadata.metadatabody *
#/definitions/ObjectB3
1/-formDataThe file to upload."data2fileJ:
8
2001
/
Successful response

#/definitions/Objectb<
:
Oauth20
.https://www.googleapis.com/auth/cloud-platformbE
C
Oauth29
7https://www.googleapis.com/auth/devstorage.full_controlbC
A
Oauth27
5https://www.googleapis.com/auth/devstorage.read_writeJ
#/parameters/altJ
#/parameters/fieldsJ
#/parameters/keyJ
#/parameters/oauth_tokenJ
#/parameters/prettyPrintJ
#/parameters/quotaUserJ
#/parameters/userIpJæÿ
Á?
Bucket‹?"	A bucket.≤
object ¬?
Y
aclR"Access controls on the bucket.≤
array∫%
#
!#/definitions/BucketAccessControl
ú
billingê"#The bucket's billing configuration.≤
object ]
[
requesterPaysJ"<When set to true, Requester Pays is enabled for this bucket.≤	
boolean
¶
corsù"@The bucket's Cross-Origin Resource Sharing (CORS) configuration.≤
array∫Õ
 ≤
object ª
â
maxAgeSecondsxint32"cThe value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.≤	
integer
Ã
method¡"§The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".≤
array∫
≤
string
≠
origin¢"ÖThe list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".≤
array∫
≤
string
≠
responseHeaderö"~The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.≤
array∫
≤
string
ö
defaultEventBasedHoldÄ"ÒThe default value for event-based hold on newly created objects in this bucket. Event-based hold is a way to retain objects indefinitely until an event occurs, signified by the hold's release. After being released, such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false. Objects under event-based hold cannot be deleted, overwritten or archived until the hold is removed.≤	
boolean
ê
defaultObjectAcl|"HDefault access controls to apply to new objects when no ACL is provided.≤
array∫%
#
!#/definitions/ObjectAccessControl
·

encryption“"&Encryption configuration for a bucket.≤
object õ
ò
defaultKmsKeyNameÇ"uA Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified.≤
string
8
etag0"#HTTP 1.1 Entity tag for the bucket.≤
string
^
idX"KThe ID of the bucket. For buckets, the id and name properties are the same.≤
string
m
kinde"EThe kind of item this is. For buckets, this is always storage#bucket.*storage#bucket
≤
string
l
labelsb")User-provided labels, in key/value pairs.™)
'"An individual label entry.≤
string≤
object
ﬂ
	lifecycle—"TThe bucket's lifecycle configuration. See lifecycle management for more information.≤
object Ï
È
rule‡"zA lifecycle management rule, which is made of an action to take and the condition(s) under which the action will be taken.≤
array∫÷

”
≤
object ƒ

ˇ
actionÙ"The action to take.≤
object –
j
storageClassZ"MTarget storage class. Required iff the type of the action is SetStorageClass.≤
string
b
typeZ"MType of the action. Currently, only Delete and SetStorageClass are supported.≤
string
ø
	condition±"6The condition(s) under which the action will be taken.≤
object Í
}
agevint32"aAge of an object (in days). This condition is satisfied when an object reaches the specified age.≤	
integer
Ÿ
createdBefore«date"≥A date in RFC 3339 format with only the date part (for instance, "2013-01-15"). This condition is satisfied when an object is created before midnight of the specified date in UTC.≤
string
≠
isLive¢"ìRelevant only for versioned objects. If the value is true, this condition matches live objects; if the value is false, it matches archived objects.≤	
boolean
Ù
matchesStorageClass‹"øObjects having any of the storage classes specified by this condition will be matched. Values include MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, and DURABLE_REDUCED_AVAILABILITY.≤
array∫
≤
string
Â
numNewerVersions–int32"∫Relevant only for versioned objects. If the value is N, this condition is satisfied when there are at least N versions (including the live version) newer than this version of the object.≤	
integer
“
location≈"∑The location of the bucket. Object data for objects in the bucket resides in physical storage within this region. Defaults to US. See the developer's guide for the authoritative list.≤
string
¬
logging∂"ÄThe bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.≤
object §
b
	logBucketU"HThe destination bucket where the current bucket's logs should be placed.≤
string
>
logObjectPrefix+"A prefix for log object names.≤
string
M
metageneration;int64"'The metadata generation of this bucket.≤
string
,
name$"The name of the bucket.≤
string
€
owner—"GThe owner of the bucket. This is always the project team's owner group.≤
object z
G
entity="0The entity, in the form project-owner-projectId.≤
string
/
entityId#"The ID for the entity.≤
string
^
projectNumberMuint64"8The project number of the project the bucket belongs to.≤
string
∞	
retentionPolicyú	"◊The bucket's retention policy. The retention policy enforces a minimum retention time for all objects contained in the bucket, based on their creation time. Any attempt to overwrite or delete objects younger than the retention period will result in a PERMISSION_DENIED error. An unlocked retention policy can be modified or removed from the bucket via a storage.buckets.update operation. A locked retention policy cannot be removed or shortened in duration for the lifetime of the bucket. Attempting to remove or decrease period of a locked retention policy will result in a PERMISSION_DENIED error.≤
object ≥
©
effectiveTimeó	date-time"Server-determined value that indicates the time from which policy was enforced and effective. This value is in RFC 3339 format.≤
string
U
isLockedI";Once locked, an object retention policy cannot be modified.≤	
boolean
≠
retentionPeriodôint64"ÑThe duration in seconds that objects need to be retained. Retention duration must be greater than zero and less than 100 years. Note that enforcement of retention periods less than a day is not guaranteed. Such periods should only be used for testing purposes.≤
string
0
selfLink$"The URI of this bucket.≤
string
◊
storageClass∆"∏The bucket's default storage class, used whenever no storageClass is specified for a newly-created object. This defines how objects in the bucket are stored and determines the SLA and the cost of storage. Values include MULTI_REGIONAL, REGIONAL, STANDARD, NEARLINE, COLDLINE, and DURABLE_REDUCED_AVAILABILITY. If this value is not specified when the bucket is created, it will default to STANDARD. For more information, see storage classes.≤
string
Z
timeCreatedK	date-time"3The creation time of the bucket in RFC 3339 format.≤
string
Z
updatedO	date-time"7The modification time of the bucket in RFC 3339 format.≤
string
ü

versioningê"&The bucket's versioning configuration.≤
object Z
X
enabledM"?While set to true, versioning is fully enabled for this bucket.≤	
boolean
¡
websiteµ"´The bucket's website configuration, controlling how the service behaves when accessing bucket contents as a web site. See the Static Website Examples for more information.≤
object ¯
ç
mainPageSuffix˙"ÏIf the requested object path is missing, the service will ensure the path has a trailing '/', append this suffix, and attempt to retrieve the resulting object. This allows the creation of index.html objects to represent directory pages.≤
string
Â
notFoundPage‘"∆If the requested object path is missing, and any mainPageSuffix object is missing, if applicable, the service will return the named object from this bucket as the content for a 404 Not Found result.≤
string
˚

BucketAccessControl„
"An access-control entry.≤
object ∫

.
bucket$"The name of the bucket.≤
string
E
domain;".The domain associated with the entity, if any.≤
string
K
emailB"5The email address associated with the entity, if any.≤
string
Ú
entityÁ"ŸThe entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- domain-domain 
- project-team-projectId 
- allUsers 
- allAuthenticatedUsers Examples: 
- The user liz@example.com would be user-liz@example.com. 
- The group example@googlegroups.com would be group-example@googlegroups.com. 
- To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.≤
string
7
entityId+"The ID for the entity, if any.≤
string
F
etag>"1HTTP 1.1 Entity tag for the access-control entry.≤
string
6
id0"#The ID of the access-control entry.≤
string
û
kindï"hThe kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.*storage#bucketAccessControl
≤
string
ß
projectTeamó"4The project team associated with the entity, if any.≤
object S
1
projectNumber "The project number.≤
string

team"	The team.≤
string
:
role2"%The access permission for the entity.≤
string
?
selfLink3"&The link to this access-control entry.≤
string
æ
BucketAccessControls•"An access-control list.≤
object ˝
O
itemsF"The list of items.≤
array∫%
#
!#/definitions/BucketAccessControl
©
kind†"rThe kind of item this is. For lists of bucket access control entries, this is always storage#bucketAccessControls.*storage#bucketAccessControls
≤
string
û
Bucketsí"A list of buckets.≤
object Ô
B
items9"The list of items.≤
array∫

#/definitions/Bucket
x
kindp"OThe kind of item this is. For lists of buckets, this is always storage#buckets.*storage#buckets
≤
string
Æ
nextPageTokenú"éThe continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.≤
string
€	
Channelœ	";An notification channel used to watch for resource changes.≤
object É	
W
addressL"?The address where notifications are delivered for this channel.≤
string
ç

expirationint64"kDate and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.≤
string
P
idJ"=A UUID or similar unique string that identifies this channel.≤
string
ü
kindñ"yIdentifies this as a notification channel used to watch for changes to a resource. Value: the fixed string "api#channel".*api#channel
≤
string
ë
paramsÜ"FAdditional parameters controlling delivery channel behavior. Optional.™0
."!Declares a new parameter by name.≤
string≤
object
Y
payloadN"@A Boolean value to indicate whether payload is wanted. Optional.≤	
boolean
â

resourceId{"nAn opaque ID that identifies the resource being watched on this channel. Stable across different API versions.≤
string
S
resourceUriD"7A version-specific identifier for the watched resource.≤
string
á
token~"qAn arbitrary string delivered to the target address with each notification delivered over this channel. Optional.≤
string
J
typeB"5The type of delivery mechanism used for this channel.≤
string
Ö
ComposeRequestÚ"A Compose request.≤
object œ
U
destinationF
#/definitions/Object"#Properties of the resulting object.≤
string
I
kindA"The kind of item this is.*storage#composeRequest
≤
string
™
sourceObjectsò"JThe list of source objects that will be concatenated into a single object.≤
array∫æ
ª≤
object ¨
U

generationGint64"3The generation of this object to use as the source.≤
string
o
nameg"ZThe source object's name. The source object's bucket is implicitly the destination bucket.≤
string
·
objectPreconditions…":Conditions that must be met for this operation to execute.≤
object ˛
˚
ifGenerationMatchÂint64"–Only perform the composition if the generation of the source object that would be used matches this value. If this value and a generation are both specified, they must be the same value or the call will fail.≤
string
˜
NotificationÊ"6A subscription to receive Google PubSub notifications.≤
object ü
±
custom_attributesõ"~An optional list of additional attributes to attach to each Cloud PubSub message published for this notification subscription.™
≤
string≤
object
L
etagD"7HTTP 1.1 Entity tag for this subscription notification.≤
string
õ
event_typesã"oIf present, only send notifications about listed event types. If empty, sent notifications for all event types.≤
array∫
≤
string
.
id("The ID of the notification.≤
string

kindw"QThe kind of item this is. For notifications, this is always storage#notification.*storage#notification
≤
string
Ü
object_name_prefixp"cIf present, only apply this notification configuration to object names that begin with this prefix.≤
string
R
payload_format@"#The desired content of the Payload.*JSON_API_V1
≤
string
@
selfLink4"'The canonical URL of this notification.≤
string
¨
topic¢"îThe Cloud PubSub topic to which this subscription publishes. Formatted as: '//pubsub.googleapis.com/projects/{project-identifier}/topics/{my-topic}'≤
string
†
Notificationsé"%A list of notification subscriptions.≤
object ÿ
H
items?"The list of items.≤
array∫

#/definitions/Notification
ã
kindÇ"[The kind of item this is. For lists of notifications, this is always storage#notifications.*storage#notifications
≤
string
≠)
Object¢)"
An object.≤
object á)
Y
aclR"Access controls on the object.≤
array∫%
#
!#/definitions/ObjectAccessControl
E
bucket;".The name of the bucket containing this object.≤
string
∂
cacheControl•"óCache-Control directive for the object data. If omitted, and the object is accessible to all anonymous users, the default will be public, max-age=3600.≤
string
ì
componentCountÄint32"kNumber of underlying components that make up this object. Components are accumulated by compose operations.≤	
integer
J
contentDisposition4"'Content-Disposition of the object data.≤
string
D
contentEncoding1"$Content-Encoding of the object data.≤
string
D
contentLanguage1"$Content-Language of the object data.≤
string
ñ
contentTypeÜ"yContent-Type of the object data. If an object is stored without a Content-Type, it is served as application/octet-stream.≤
string
⁄
crc32cœ"¡CRC32c checksum, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. For more information about using the CRC32c checksum, see Hashes and ETags: Best Practices.≤
string
Ç
customerEncryptionÎ"WMetadata of customer-supplied encryption key, if the object is encrypted by such a key.≤
object É
=
encryptionAlgorithm&"The encryption algorithm.≤
string
B
	keySha2565"(SHA256 hash value of the encryption key.≤
string
8
etag0"#HTTP 1.1 Entity tag for the object.≤
string
º
eventBasedHold©"öWhether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any). One sample use case of this flag is for banks to hold loan documents for at least 3 years after loan is paid in full. Here, bucket-level retention is 3 years and the event is the loan being paid in full. In this example, these objects will be held intact for any number of years until the event has occurred (event-based hold on the object is released) and then 3 more years after that. That means retention duration of the objects begins from the moment event-based hold transitioned from true to false.≤	
boolean
d

generationVint64"BThe content generation of this object. Used for object versioning.≤
string
g
ida"TThe ID of the object, including the bucket name, object name, and generation number.≤
string
m
kinde"EThe kind of item this is. For objects, this is always storage#object.*storage#object
≤
string
®

kmsKeyNameô"ãCloud KMS Key used to encrypt this object, if the object is encrypted by such a key. Limited availability; usable only by enabled projects.≤
string
ö
md5Hashé"ÄMD5 hash of the data; encoded using base64. For more information about using the MD5 hash, see Hashes and ETags: Best Practices.≤
string
.
	mediaLink!"Media download link.≤
string
s
metadatag"+User-provided metadata, in key/value pairs.™,
*"An individual metadata entry.≤
string≤
object
í
metagenerationˇint64"ÍThe version of the metadata for this object at this generation. Used for preconditions and for detecting changes in metadata. A metageneration number is only meaningful in the context of a particular generation of a particular object.≤
string
X
nameP"CThe name of the object. Required if not specified by URL parameter.≤
string
–
owner∆"HThe owner of the object. This will always be the uploader of the object.≤
object n
;
entity1"$The entity, in the form user-userId.≤
string
/
entityId#"The ID for the entity.≤
string
Ó
retentionExpirationTime“	date-time"πA server-determined value that specifies the earliest time that the object's retention period expires. This value is in RFC 3339 format. Note 1: This field is not provided for objects with an active event-based hold, since retention expiration is unknown until the hold is removed. Note 2: This value can be provided even when temporary hold is set (so that the user can reason about policy without having to first unset the temporary hold).≤
string
1
selfLink%"The link to this object.≤
string
A
size9uint64"$Content-Length of the data in bytes.≤
string
9
storageClass)"Storage class of the object.≤
string
ê
temporaryHold˛"ÔWhether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites. A common use case of this flag is regulatory investigations where objects need to be retained while the investigation is ongoing. Note that unlike event-based hold, temporary hold does not impact retention expiration time of an object.≤	
boolean
Z
timeCreatedK	date-time"3The creation time of the object in RFC 3339 format.≤
string
©
timeDeletedô	date-time"ÄThe deletion time of the object in RFC 3339 format. Will be returned if and only if this version of the object has been deleted.≤
string
∏
timeStorageClassUpdatedú	date-time"ÉThe time at which the object's storage class was last changed. When the object is initially created, it will be set to timeCreated.≤
string
c
updatedX	date-time"@The modification time of the object metadata in RFC 3339 format.≤
string
¶
ObjectAccessControlé"An access-control entry.≤
object Â
.
bucket$"The name of the bucket.≤
string
E
domain;".The domain associated with the entity, if any.≤
string
K
emailB"5The email address associated with the entity, if any.≤
string
Ú
entityÁ"ŸThe entity holding the permission, in one of the following forms: 
- user-userId 
- user-email 
- group-groupId 
- group-email 
- domain-domain 
- project-team-projectId 
- allUsers 
- allAuthenticatedUsers Examples: 
- The user liz@example.com would be user-liz@example.com. 
- The group example@googlegroups.com would be group-example@googlegroups.com. 
- To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.≤
string
7
entityId+"The ID for the entity, if any.≤
string
F
etag>"1HTTP 1.1 Entity tag for the access-control entry.≤
string
`

generationRint64">The content generation of the object, if applied to an object.≤
string
6
id0"#The ID of the access-control entry.≤
string
û
kindï"hThe kind of item this is. For object access control entries, this is always storage#objectAccessControl.*storage#objectAccessControl
≤
string
G
object="0The name of the object, if applied to an object.≤
string
ß
projectTeamó"4The project team associated with the entity, if any.≤
object S
1
projectNumber "The project number.≤
string

team"	The team.≤
string
:
role2"%The access permission for the entity.≤
string
?
selfLink3"&The link to this access-control entry.≤
string
æ
ObjectAccessControls•"An access-control list.≤
object ˝
O
itemsF"The list of items.≤
array∫%
#
!#/definitions/ObjectAccessControl
©
kind†"rThe kind of item this is. For lists of object access control entries, this is always storage#objectAccessControls.*storage#objectAccessControls
≤
string
Æ
Objects¢"A list of objects.≤
object ˇ
B
items9"The list of items.≤
array∫

#/definitions/Object
x
kindp"OThe kind of item this is. For lists of objects, this is always storage#objects.*storage#objects
≤
string
Æ
nextPageTokenú"éThe continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.≤
string
ç
prefixesÄ"dThe list of prefixes of objects matching-but-not-listed up to and including the requested delimiter.≤
array∫
≤
string
©
Policyû"A bucket/object IAM policy.≤
object Ú
Ë
bindings€"kAn association between a role, which comes with a set of permissions, and members who may assume that role.≤
array∫‡
›≤
object Œ

	condition 
˜	
membersÎ	"Œ	A collection of identifiers for members who may assume the provided role. Recognized identifiers are as follows:  
- allUsers ‚Äî A special identifier that represents anyone on the internet; with or without a Google account.  
- allAuthenticatedUsers ‚Äî A special identifier that represents anyone who is authenticated with a Google account or a service account.  
- user:emailid ‚Äî An email address that represents a specific account. For example, user:alice@gmail.com or user:joe@example.com.  
- serviceAccount:emailid ‚Äî An email address that represents a service account. For example,  serviceAccount:my-other-app@appspot.gserviceaccount.com .  
- group:emailid ‚Äî An email address that represents a Google group. For example, group:admins@example.com.  
- domain:domain ‚Äî A Google Apps domain name that represents all the users of that domain. For example, domain:google.com or domain:example.com.  
- projectOwner:projectid ‚Äî Owners of the given project. For example, projectOwner:my-example-project  
- projectEditor:projectid ‚Äî Editors of the given project. For example, projectEditor:my-example-project  
- projectViewer:projectid ‚Äî Viewers of the given project. For example, projectViewer:my-example-project≤
array∫
≤
string
¬
roleπ"´The role to which members belong. Two types of roles are supported: new IAM roles, which grant permissions that do not map directly to those provided by ACLs, and legacy IAM roles, which do map directly to ACL permissions. All roles are of the format roles/storage.specificRole.
The new IAM roles are:  
- roles/storage.admin ‚Äî Full control of Google Cloud Storage resources.  
- roles/storage.objectViewer ‚Äî Read-Only access to Google Cloud Storage objects.  
- roles/storage.objectCreator ‚Äî Access to create objects in Google Cloud Storage.  
- roles/storage.objectAdmin ‚Äî Full control of Google Cloud Storage objects.   The legacy IAM roles are:  
- roles/storage.legacyObjectReader ‚Äî Read-only access to objects without listing. Equivalent to an ACL entry on an object with the READER role.  
- roles/storage.legacyObjectOwner ‚Äî Read/write access to existing objects without listing. Equivalent to an ACL entry on an object with the OWNER role.  
- roles/storage.legacyBucketReader ‚Äî Read access to buckets with object listing. Equivalent to an ACL entry on a bucket with the READER role.  
- roles/storage.legacyBucketWriter ‚Äî Read access to buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the WRITER role.  
- roles/storage.legacyBucketOwner ‚Äî Read and write access to existing buckets with object listing/creation/deletion. Equivalent to an ACL entry on a bucket with the OWNER role.≤
string
?
etag7byte"$HTTP 1.1  Entity tag for the policy.≤
string
è
kindÜ"fThe kind of item this is. For policies, this is always storage#policy. This field is ignored on input.*storage#policy
≤
string
±

resourceId¢"îThe ID of the resource to which this policy belongs. Will be of the form projects/_/buckets/bucket for buckets, and projects/_/buckets/bucket/objects/object for objects. A specific generation may be specified by appending #generationNumber to the end of the object name, e.g. projects/_/buckets/my-bucket/objects/data.txt#17. The current generation can be denoted with #0. This field is ignored on input.≤
string
Ã
RewriteResponse∏"A rewrite response.≤
object î
í
doneâ"{true if the copy is finished; otherwise, false if the copy is in progress. This property is always present in the response.≤	
boolean
J
kindB"The kind of item this is.*storage#rewriteResponse
≤
string
Ü

objectSizexint64"dThe total size of the object being copied in bytes. This property is always present in the response.≤
string
≥
resource¶
#/definitions/Object"ÇA resource containing the metadata for the copied-to object. This property is present in the response only when copying completes.≤
string
™
rewriteTokenô"ãA token to use in subsequent requests to continue copying data. This token is present in the response only when there is more data to copy.≤
string
ƒ
totalBytesRewritten¨int64"óThe total bytes written so far, which can be used to provide a waiting user with a progress indicator. This property is always present in the response.≤
string
ô
ServiceAccountÜ"6A subscription to receive Google PubSub notifications.≤
object ø
9
email_address("The ID of the notification.≤
string
Å
kindy"QThe kind of item this is. For notifications, this is always storage#notification.*storage#serviceAccount
≤
string
å	
TestIamPermissionsResponseÌ"8A storage.(buckets|objects).testIamPermissions response.≤
object §
U
kindM"The kind of item this is.*%#storage#testIamPermissionsResponse
≤
string
 
permissions∫"ùThe permissions held by the caller. Permissions are always of the format storage.resource.capability, where resource is one of buckets or objects. The supported permissions are as follows:  
- storage.buckets.delete ‚Äî Delete bucket.  
- storage.buckets.get ‚Äî Read bucket metadata.  
- storage.buckets.getIamPolicy ‚Äî Read bucket IAM policy.  
- storage.buckets.create ‚Äî Create bucket.  
- storage.buckets.list ‚Äî List buckets.  
- storage.buckets.setIamPolicy ‚Äî Update bucket IAM policy.  
- storage.buckets.update ‚Äî Update bucket metadata.  
- storage.objects.delete ‚Äî Delete object.  
- storage.objects.get ‚Äî Read object data and metadata.  
- storage.objects.getIamPolicy ‚Äî Read object IAM policy.  
- storage.objects.create ‚Äî Create object.  
- storage.objects.list ‚Äî List objects.  
- storage.objects.setIamPolicy ‚Äî Update object IAM policy.  
- storage.objects.update ‚Äî Update object metadata.≤
array∫
≤
stringRù
Q
altJHFqueryData format for the response."alt2stringRjson
™json

i
fields_][queryBSelector specifying which fields to include in a partial response."fields2string
∏
key∞≠™queryìAPI key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token."key2string
V
oauth_tokenGECquery%OAuth 2.0 token for the current user."oauth_token2string
n
prettyPrint_][query3Returns response with indentations and line breaks."prettyPrint2booleanRtrue

á
	quotaUserzxvqueryZAn opaque string that represents a user for quota purposes. Must not exceed 40 characters."	quotaUser2string
P
userIpFDBquery)Deprecated. Please use quotaUser instead."userIp2stringjà
Ö
Oauth2˙˜
oauth2implicitù
q
.https://www.googleapis.com/auth/cloud-platform?View and manage your data across Google Cloud Platform services
p
8https://www.googleapis.com/auth/cloud-platform.read-only4View your data across Google Cloud Platform services
s
7https://www.googleapis.com/auth/devstorage.full_control8Manage your data and permissions in Google Cloud Storage
^
4https://www.googleapis.com/auth/devstorage.read_only&View your data in Google Cloud Storage
a
5https://www.googleapis.com/auth/devstorage.read_write(Manage your data in Google Cloud Storage")https://accounts.google.com/o/oauth2/auth*Oauth 2.0 authenticationr
bucketAccessControlsr	
bucketsr

channelsr
defaultObjectAccessControlsr
notificationsr
objectAccessControlsr	
objectsr

projectsz64https://developers.google.com/storage/docs/json_api/