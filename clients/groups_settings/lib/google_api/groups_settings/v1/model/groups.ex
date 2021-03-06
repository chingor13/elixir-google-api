# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.GroupsSettings.V1.Model.Groups do
  @moduledoc """
  JSON template for Group resource

  ## Attributes

  *   `whoCanMoveTopicsOut` (*type:* `String.t`, *default:* `nil`) - Permission to move topics out of the group or forum. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `maxMessageBytes` (*type:* `integer()`, *default:* `nil`) - Maximum message size allowed.
  *   `primaryLanguage` (*type:* `String.t`, *default:* `nil`) - Primary language for the group.
  *   `whoCanHideAbuse` (*type:* `String.t`, *default:* `nil`) - Permission to hide posts by reporting them as abuse. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanDeleteAnyPost` (*type:* `String.t`, *default:* `nil`) - Permission to delete replies to topics. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanBanUsers` (*type:* `String.t`, *default:* `nil`) - Permission to ban users. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `customFooterText` (*type:* `String.t`, *default:* `nil`) - Custom footer text.
  *   `whoCanAssistContent` (*type:* `String.t`, *default:* `nil`) - Permission for content assistants. Possible values are: Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `enableCollaborativeInbox` (*type:* `String.t`, *default:* `nil`) - If a primary Collab Inbox feature is enabled.
  *   `whoCanJoin` (*type:* `String.t`, *default:* `nil`) - Permissions to join the group. Possible values are: ANYONE_CAN_JOIN ALL_IN_DOMAIN_CAN_JOIN INVITED_CAN_JOIN CAN_REQUEST_TO_JOIN
  *   `replyTo` (*type:* `String.t`, *default:* `nil`) - Whome should the default reply to a message go to. Possible values are: REPLY_TO_CUSTOM REPLY_TO_SENDER REPLY_TO_LIST REPLY_TO_OWNER REPLY_TO_IGNORE REPLY_TO_MANAGERS
  *   `whoCanModifyMembers` (*type:* `String.t`, *default:* `nil`) - Permission to modify members (change member roles). Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanAddReferences` (*type:* `String.t`, *default:* `nil`) - Permission to add references to a topic. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanInvite` (*type:* `String.t`, *default:* `nil`) - Permissions to invite members. Possible values are: ALL_MEMBERS_CAN_INVITE ALL_MANAGERS_CAN_INVITE ALL_OWNERS_CAN_INVITE NONE_CAN_INVITE
  *   `archiveOnly` (*type:* `String.t`, *default:* `nil`) - If the group is archive only
  *   `isArchived` (*type:* `String.t`, *default:* `nil`) - If the contents of the group are archived.
  *   `whoCanMarkNoResponseNeeded` (*type:* `String.t`, *default:* `nil`) - Permission to mark a topic as not needing a response. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `sendMessageDenyNotification` (*type:* `String.t`, *default:* `nil`) - Should the member be notified if his message is denied by owner.
  *   `favoriteRepliesOnTop` (*type:* `String.t`, *default:* `nil`) - If favorite replies should be displayed above other replies.
  *   `whoCanPostAnnouncements` (*type:* `String.t`, *default:* `nil`) - Permission to post announcements, a special topic type. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `customReplyTo` (*type:* `String.t`, *default:* `nil`) - Default email to which reply to any message should go.
  *   `membersCanPostAsTheGroup` (*type:* `String.t`, *default:* `nil`) - Can members post using the group email address.
  *   `whoCanDiscoverGroup` (*type:* `String.t`, *default:* `nil`) - Permission for who can discover the group. Possible values are: ALL_MEMBERS_CAN_DISCOVER ALL_IN_DOMAIN_CAN_DISCOVER ANYONE_CAN_DISCOVER
  *   `whoCanMarkFavoriteReplyOnAnyTopic` (*type:* `String.t`, *default:* `nil`) - Permission to mark any other user's post as a favorite reply. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanLockTopics` (*type:* `String.t`, *default:* `nil`) - Permission to lock topics. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanMoveTopicsIn` (*type:* `String.t`, *default:* `nil`) - Permission to move topics into the group or forum. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `includeCustomFooter` (*type:* `String.t`, *default:* `nil`) - Whether to include custom footer.
  *   `whoCanAdd` (*type:* `String.t`, *default:* `nil`) - Permissions to add members. Possible values are: ALL_MANAGERS_CAN_ADD ALL_OWNERS_CAN_ADD ALL_MEMBERS_CAN_ADD NONE_CAN_ADD
  *   `whoCanMarkDuplicate` (*type:* `String.t`, *default:* `nil`) - Permission to mark a topic as a duplicate of another topic. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `messageModerationLevel` (*type:* `String.t`, *default:* `nil`) - Moderation level for messages. Possible values are: MODERATE_ALL_MESSAGES MODERATE_NON_MEMBERS MODERATE_NEW_MEMBERS MODERATE_NONE
  *   `whoCanViewMembership` (*type:* `String.t`, *default:* `nil`) - Permissions to view membership. Possible values are: ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW ALL_OWNERS_CAN_VIEW
  *   `whoCanPostMessage` (*type:* `String.t`, *default:* `nil`) - Permissions to post messages to the group. Possible values are: NONE_CAN_POST ALL_MANAGERS_CAN_POST ALL_MEMBERS_CAN_POST ALL_OWNERS_CAN_POST ALL_IN_DOMAIN_CAN_POST ANYONE_CAN_POST
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the Group
  *   `showInGroupDirectory` (*type:* `String.t`, *default:* `nil`) - Is the group listed in groups directory
  *   `whoCanTakeTopics` (*type:* `String.t`, *default:* `nil`) - Permission to take topics in a forum. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanUnmarkFavoriteReplyOnAnyTopic` (*type:* `String.t`, *default:* `nil`) - Permission to unmark any post from a favorite reply. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanMarkFavoriteReplyOnOwnTopic` (*type:* `String.t`, *default:* `nil`) - Permission to mark a post for a topic they started as a favorite reply. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanDeleteTopics` (*type:* `String.t`, *default:* `nil`) - Permission to delete topics. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `kind` (*type:* `String.t`, *default:* `groupsSettings#groups`) - The type of the resource.
  *   `spamModerationLevel` (*type:* `String.t`, *default:* `nil`) - Moderation level for messages detected as spam. Possible values are: ALLOW MODERATE SILENTLY_MODERATE REJECT
  *   `includeInGlobalAddressList` (*type:* `String.t`, *default:* `nil`) - If this groups should be included in global address list or not.
  *   `whoCanModerateMembers` (*type:* `String.t`, *default:* `nil`) - Permission for membership moderation. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanContactOwner` (*type:* `String.t`, *default:* `nil`) - Permission to contact owner of the group via web UI. Possible values are: ANYONE_CAN_CONTACT ALL_IN_DOMAIN_CAN_CONTACT ALL_MEMBERS_CAN_CONTACT ALL_MANAGERS_CAN_CONTACT
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the group
  *   `email` (*type:* `String.t`, *default:* `nil`) - Email id of the group
  *   `whoCanLeaveGroup` (*type:* `String.t`, *default:* `nil`) - Permission to leave the group. Possible values are: ALL_MANAGERS_CAN_LEAVE ALL_OWNERS_CAN_LEAVE ALL_MEMBERS_CAN_LEAVE NONE_CAN_LEAVE
  *   `messageDisplayFont` (*type:* `String.t`, *default:* `nil`) - Default message display font. Possible values are: DEFAULT_FONT FIXED_WIDTH_FONT
  *   `allowGoogleCommunication` (*type:* `String.t`, *default:* `nil`) - Is google allowed to contact admins.
  *   `allowWebPosting` (*type:* `String.t`, *default:* `nil`) - If posting from web is allowed.
  *   `customRolesEnabledForSettingsToBeMerged` (*type:* `String.t`, *default:* `nil`) - If any of the settings that will be merged have custom roles which is anything other than owners, managers, or group scopes.
  *   `whoCanApproveMembers` (*type:* `String.t`, *default:* `nil`) - Permission to approve members. Possible values are: ALL_OWNERS_CAN_APPROVE ALL_MANAGERS_CAN_APPROVE ALL_MEMBERS_CAN_APPROVE NONE_CAN_APPROVE
  *   `whoCanViewGroup` (*type:* `String.t`, *default:* `nil`) - Permissions to view group. Possible values are: ANYONE_CAN_VIEW ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW ALL_OWNERS_CAN_VIEW
  *   `whoCanModifyTagsAndCategories` (*type:* `String.t`, *default:* `nil`) - Permission to change tags and categories. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanAssignTopics` (*type:* `String.t`, *default:* `nil`) - Permission to assign topics in a forum to another user. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `defaultMessageDenyNotificationText` (*type:* `String.t`, *default:* `nil`) - Default message deny notification message
  *   `whoCanUnassignTopic` (*type:* `String.t`, *default:* `nil`) - Permission to unassign any topic in a forum. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanMakeTopicsSticky` (*type:* `String.t`, *default:* `nil`) - Permission to make topics appear at the top of the topic list. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `allowExternalMembers` (*type:* `String.t`, *default:* `nil`) - Are external members allowed to join the group.
  *   `whoCanEnterFreeFormTags` (*type:* `String.t`, *default:* `nil`) - Permission to enter free form tags for topics in a forum. Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanModerateContent` (*type:* `String.t`, *default:* `nil`) - Permission for content moderation. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  *   `whoCanApproveMessages` (*type:* `String.t`, *default:* `nil`) - Permission to approve pending messages in the moderation queue. Possible values are: NONE OWNERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :whoCanMoveTopicsOut => String.t(),
          :maxMessageBytes => integer(),
          :primaryLanguage => String.t(),
          :whoCanHideAbuse => String.t(),
          :whoCanDeleteAnyPost => String.t(),
          :whoCanBanUsers => String.t(),
          :customFooterText => String.t(),
          :whoCanAssistContent => String.t(),
          :enableCollaborativeInbox => String.t(),
          :whoCanJoin => String.t(),
          :replyTo => String.t(),
          :whoCanModifyMembers => String.t(),
          :whoCanAddReferences => String.t(),
          :whoCanInvite => String.t(),
          :archiveOnly => String.t(),
          :isArchived => String.t(),
          :whoCanMarkNoResponseNeeded => String.t(),
          :sendMessageDenyNotification => String.t(),
          :favoriteRepliesOnTop => String.t(),
          :whoCanPostAnnouncements => String.t(),
          :customReplyTo => String.t(),
          :membersCanPostAsTheGroup => String.t(),
          :whoCanDiscoverGroup => String.t(),
          :whoCanMarkFavoriteReplyOnAnyTopic => String.t(),
          :whoCanLockTopics => String.t(),
          :whoCanMoveTopicsIn => String.t(),
          :includeCustomFooter => String.t(),
          :whoCanAdd => String.t(),
          :whoCanMarkDuplicate => String.t(),
          :messageModerationLevel => String.t(),
          :whoCanViewMembership => String.t(),
          :whoCanPostMessage => String.t(),
          :name => String.t(),
          :showInGroupDirectory => String.t(),
          :whoCanTakeTopics => String.t(),
          :whoCanUnmarkFavoriteReplyOnAnyTopic => String.t(),
          :whoCanMarkFavoriteReplyOnOwnTopic => String.t(),
          :whoCanDeleteTopics => String.t(),
          :kind => String.t(),
          :spamModerationLevel => String.t(),
          :includeInGlobalAddressList => String.t(),
          :whoCanModerateMembers => String.t(),
          :whoCanContactOwner => String.t(),
          :description => String.t(),
          :email => String.t(),
          :whoCanLeaveGroup => String.t(),
          :messageDisplayFont => String.t(),
          :allowGoogleCommunication => String.t(),
          :allowWebPosting => String.t(),
          :customRolesEnabledForSettingsToBeMerged => String.t(),
          :whoCanApproveMembers => String.t(),
          :whoCanViewGroup => String.t(),
          :whoCanModifyTagsAndCategories => String.t(),
          :whoCanAssignTopics => String.t(),
          :defaultMessageDenyNotificationText => String.t(),
          :whoCanUnassignTopic => String.t(),
          :whoCanMakeTopicsSticky => String.t(),
          :allowExternalMembers => String.t(),
          :whoCanEnterFreeFormTags => String.t(),
          :whoCanModerateContent => String.t(),
          :whoCanApproveMessages => String.t()
        }

  field(:whoCanMoveTopicsOut)
  field(:maxMessageBytes)
  field(:primaryLanguage)
  field(:whoCanHideAbuse)
  field(:whoCanDeleteAnyPost)
  field(:whoCanBanUsers)
  field(:customFooterText)
  field(:whoCanAssistContent)
  field(:enableCollaborativeInbox)
  field(:whoCanJoin)
  field(:replyTo)
  field(:whoCanModifyMembers)
  field(:whoCanAddReferences)
  field(:whoCanInvite)
  field(:archiveOnly)
  field(:isArchived)
  field(:whoCanMarkNoResponseNeeded)
  field(:sendMessageDenyNotification)
  field(:favoriteRepliesOnTop)
  field(:whoCanPostAnnouncements)
  field(:customReplyTo)
  field(:membersCanPostAsTheGroup)
  field(:whoCanDiscoverGroup)
  field(:whoCanMarkFavoriteReplyOnAnyTopic)
  field(:whoCanLockTopics)
  field(:whoCanMoveTopicsIn)
  field(:includeCustomFooter)
  field(:whoCanAdd)
  field(:whoCanMarkDuplicate)
  field(:messageModerationLevel)
  field(:whoCanViewMembership)
  field(:whoCanPostMessage)
  field(:name)
  field(:showInGroupDirectory)
  field(:whoCanTakeTopics)
  field(:whoCanUnmarkFavoriteReplyOnAnyTopic)
  field(:whoCanMarkFavoriteReplyOnOwnTopic)
  field(:whoCanDeleteTopics)
  field(:kind)
  field(:spamModerationLevel)
  field(:includeInGlobalAddressList)
  field(:whoCanModerateMembers)
  field(:whoCanContactOwner)
  field(:description)
  field(:email)
  field(:whoCanLeaveGroup)
  field(:messageDisplayFont)
  field(:allowGoogleCommunication)
  field(:allowWebPosting)
  field(:customRolesEnabledForSettingsToBeMerged)
  field(:whoCanApproveMembers)
  field(:whoCanViewGroup)
  field(:whoCanModifyTagsAndCategories)
  field(:whoCanAssignTopics)
  field(:defaultMessageDenyNotificationText)
  field(:whoCanUnassignTopic)
  field(:whoCanMakeTopicsSticky)
  field(:allowExternalMembers)
  field(:whoCanEnterFreeFormTags)
  field(:whoCanModerateContent)
  field(:whoCanApproveMessages)
end

defimpl Poison.Decoder, for: GoogleApi.GroupsSettings.V1.Model.Groups do
  def decode(value, options) do
    GoogleApi.GroupsSettings.V1.Model.Groups.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GroupsSettings.V1.Model.Groups do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
