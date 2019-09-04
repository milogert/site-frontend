-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.Organization exposing (..)

import GitHub.Enum.PinnableItemType
import GitHub.Enum.ProjectState
import GitHub.Enum.RegistryPackageType
import GitHub.Enum.RepositoryAffiliation
import GitHub.Enum.RepositoryPrivacy
import GitHub.Enum.TeamPrivacy
import GitHub.Enum.TeamRole
import GitHub.InputObject
import GitHub.Interface
import GitHub.Object
import GitHub.Scalar
import GitHub.ScalarCodecs
import GitHub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias AnyPinnableItemsOptionalArguments =
    { type_ : OptionalArgument GitHub.Enum.PinnableItemType.PinnableItemType }


{-| Determine if this repository owner has any items that can be pinned to their profile.

  - type\_ - Filter to only a particular kind of pinnable item.

-}
anyPinnableItems : (AnyPinnableItemsOptionalArguments -> AnyPinnableItemsOptionalArguments) -> SelectionSet Bool GitHub.Object.Organization
anyPinnableItems fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { type_ = Absent }

        optionalArgs =
            [ Argument.optional "type" filledInOptionals.type_ (Encode.enum GitHub.Enum.PinnableItemType.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForField "Bool" "anyPinnableItems" optionalArgs Decode.bool


type alias AuditLogOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , query : OptionalArgument String
    , orderBy : OptionalArgument GitHub.InputObject.AuditLogOrder
    }


{-| Audit log entries of the organization

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The query string to filter audit entries
  - orderBy - Ordering options for the returned audit log entries.

-}
auditLog : (AuditLogOptionalArguments -> AuditLogOptionalArguments) -> SelectionSet decodesTo GitHub.Object.OrganizationAuditEntryConnection -> SelectionSet decodesTo GitHub.Object.Organization
auditLog fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeAuditLogOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "auditLog" optionalArgs object_ identity


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the organization's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) GitHub.Object.Organization
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The organization's public profile description.
-}
description : SelectionSet (Maybe String) GitHub.Object.Organization
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The organization's public email.
-}
email : SelectionSet (Maybe String) GitHub.Object.Organization
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


id : SelectionSet GitHub.ScalarCodecs.Id GitHub.Object.Organization
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Whether the organization has verified its profile email and website.
-}
isVerified : SelectionSet Bool GitHub.Object.Organization
isVerified =
    Object.selectionForField "Bool" "isVerified" [] Decode.bool


{-| Showcases a selection of repositories and gists that the profile owner has either curated or that have been selected automatically based on popularity.
-}
itemShowcase : SelectionSet decodesTo GitHub.Object.ProfileItemShowcase -> SelectionSet decodesTo GitHub.Object.Organization
itemShowcase object_ =
    Object.selectionForCompositeField "itemShowcase" [] object_ identity


{-| The organization's public profile location.
-}
location : SelectionSet (Maybe String) GitHub.Object.Organization
location =
    Object.selectionForField "(Maybe String)" "location" [] (Decode.string |> Decode.nullable)


{-| The organization's login name.
-}
login : SelectionSet String GitHub.Object.Organization
login =
    Object.selectionForField "String" "login" [] Decode.string


type alias MemberStatusesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , orderBy : OptionalArgument GitHub.InputObject.UserStatusOrder
    }


{-| Get the status messages members of this entity have set that are either public or visible only to the organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - orderBy - Ordering options for user statuses returned from the connection.

-}
memberStatuses : (MemberStatusesOptionalArguments -> MemberStatusesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.UserStatusConnection -> SelectionSet decodesTo GitHub.Object.Organization
memberStatuses fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeUserStatusOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "memberStatuses" optionalArgs object_ identity


type alias MembersWithRoleOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who are members of this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
membersWithRole : (MembersWithRoleOptionalArguments -> MembersWithRoleOptionalArguments) -> SelectionSet decodesTo GitHub.Object.OrganizationMemberConnection -> SelectionSet decodesTo GitHub.Object.Organization
membersWithRole fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "membersWithRole" optionalArgs object_ identity


{-| The organization's public profile name.
-}
name : SelectionSet (Maybe String) GitHub.Object.Organization
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The HTTP path creating a new team
-}
newTeamResourcePath : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
newTeamResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL creating a new team
-}
newTeamUrl : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
newTeamUrl =
    Object.selectionForField "ScalarCodecs.Uri" "newTeamUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The billing email for the organization.
-}
organizationBillingEmail : SelectionSet (Maybe String) GitHub.Object.Organization
organizationBillingEmail =
    Object.selectionForField "(Maybe String)" "organizationBillingEmail" [] (Decode.string |> Decode.nullable)


type alias PendingMembersOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of users who have been invited to join this organization.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pendingMembers : (PendingMembersOptionalArguments -> PendingMembersOptionalArguments) -> SelectionSet decodesTo GitHub.Object.UserConnection -> SelectionSet decodesTo GitHub.Object.Organization
pendingMembers fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pendingMembers" optionalArgs object_ identity


type alias PinnableItemsOptionalArguments =
    { types : OptionalArgument (List GitHub.Enum.PinnableItemType.PinnableItemType)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of repositories and gists this profile owner can pin to their profile.

  - types - Filter the types of pinnable items that are returned.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnableItems : (PinnableItemsOptionalArguments -> PinnableItemsOptionalArguments) -> SelectionSet decodesTo GitHub.Object.PinnableItemConnection -> SelectionSet decodesTo GitHub.Object.Organization
pinnableItems fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { types = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "types" filledInOptionals.types (Encode.enum GitHub.Enum.PinnableItemType.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnableItems" optionalArgs object_ identity


type alias PinnedItemsOptionalArguments =
    { types : OptionalArgument (List GitHub.Enum.PinnableItemType.PinnableItemType)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of repositories and gists this profile owner has pinned to their profile

  - types - Filter the types of pinned items that are returned.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnedItems : (PinnedItemsOptionalArguments -> PinnedItemsOptionalArguments) -> SelectionSet decodesTo GitHub.Object.PinnableItemConnection -> SelectionSet decodesTo GitHub.Object.Organization
pinnedItems fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { types = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "types" filledInOptionals.types (Encode.enum GitHub.Enum.PinnableItemType.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnedItems" optionalArgs object_ identity


{-| Returns how many more items this profile owner can pin to their profile.
-}
pinnedItemsRemaining : SelectionSet Int GitHub.Object.Organization
pinnedItemsRemaining =
    Object.selectionForField "Int" "pinnedItemsRemaining" [] Decode.int


type alias PinnedRepositoriesOptionalArguments =
    { privacy : OptionalArgument GitHub.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument GitHub.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe GitHub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe GitHub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of repositories this user has pinned to their profile

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
pinnedRepositories : (PinnedRepositoriesOptionalArguments -> PinnedRepositoriesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.RepositoryConnection -> SelectionSet decodesTo GitHub.Object.Organization
pinnedRepositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum GitHub.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum GitHub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum GitHub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pinnedRepositories" optionalArgs object_ identity


type alias ProjectRequiredArguments =
    { number : Int }


{-| Find project by number.

  - number - The project number to find.

-}
project : ProjectRequiredArguments -> SelectionSet decodesTo GitHub.Object.Project -> SelectionSet (Maybe decodesTo) GitHub.Object.Organization
project requiredArgs object_ =
    Object.selectionForCompositeField "project" [ Argument.required "number" requiredArgs.number Encode.int ] object_ (identity >> Decode.nullable)


type alias ProjectsOptionalArguments =
    { orderBy : OptionalArgument GitHub.InputObject.ProjectOrder
    , search : OptionalArgument String
    , states : OptionalArgument (List GitHub.Enum.ProjectState.ProjectState)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of projects under the owner.

  - orderBy - Ordering options for projects returned from the connection
  - search - Query to search projects by, currently only searching by name.
  - states - A list of states to filter the projects by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
projects : (ProjectsOptionalArguments -> ProjectsOptionalArguments) -> SelectionSet decodesTo GitHub.Object.ProjectConnection -> SelectionSet decodesTo GitHub.Object.Organization
projects fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, search = Absent, states = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeProjectOrder, Argument.optional "search" filledInOptionals.search Encode.string, Argument.optional "states" filledInOptionals.states (Encode.enum GitHub.Enum.ProjectState.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "projects" optionalArgs object_ identity


{-| The HTTP path listing organization's projects
-}
projectsResourcePath : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
projectsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "projectsResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's projects
-}
projectsUrl : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
projectsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "projectsUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias RegistryPackagesOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , name : OptionalArgument String
    , names : OptionalArgument (List (Maybe String))
    , repositoryId : OptionalArgument GitHub.ScalarCodecs.Id
    , packageType : OptionalArgument GitHub.Enum.RegistryPackageType.RegistryPackageType
    , registryPackageType : OptionalArgument String
    , publicOnly : OptionalArgument Bool
    }


{-| A list of registry packages under the owner.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - name - Find registry package by name.
  - names - Find registry packages by their names.
  - repositoryId - Find registry packages in a repository.
  - packageType - Filter registry package by type.
  - registryPackageType - Filter registry package by type (string).
  - publicOnly - Filter registry package by whether it is publicly visible

-}
registryPackages : (RegistryPackagesOptionalArguments -> RegistryPackagesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.RegistryPackageConnection -> SelectionSet decodesTo GitHub.Object.Organization
registryPackages fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, name = Absent, names = Absent, repositoryId = Absent, packageType = Absent, registryPackageType = Absent, publicOnly = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "name" filledInOptionals.name Encode.string, Argument.optional "names" filledInOptionals.names (Encode.string |> Encode.maybe |> Encode.list), Argument.optional "repositoryId" filledInOptionals.repositoryId (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecId), Argument.optional "packageType" filledInOptionals.packageType (Encode.enum GitHub.Enum.RegistryPackageType.toString), Argument.optional "registryPackageType" filledInOptionals.registryPackageType Encode.string, Argument.optional "publicOnly" filledInOptionals.publicOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "registryPackages" optionalArgs object_ identity


type alias RegistryPackagesForQueryOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , query : OptionalArgument String
    , packageType : OptionalArgument GitHub.Enum.RegistryPackageType.RegistryPackageType
    }


{-| A list of registry packages for a particular search query.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - Find registry package by search query.
  - packageType - Filter registry package by type.

-}
registryPackagesForQuery : (RegistryPackagesForQueryOptionalArguments -> RegistryPackagesForQueryOptionalArguments) -> SelectionSet decodesTo GitHub.Object.RegistryPackageConnection -> SelectionSet decodesTo GitHub.Object.Organization
registryPackagesForQuery fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, query = Absent, packageType = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "packageType" filledInOptionals.packageType (Encode.enum GitHub.Enum.RegistryPackageType.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "registryPackagesForQuery" optionalArgs object_ identity


type alias RepositoriesOptionalArguments =
    { privacy : OptionalArgument GitHub.Enum.RepositoryPrivacy.RepositoryPrivacy
    , orderBy : OptionalArgument GitHub.InputObject.RepositoryOrder
    , affiliations : OptionalArgument (List (Maybe GitHub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , ownerAffiliations : OptionalArgument (List (Maybe GitHub.Enum.RepositoryAffiliation.RepositoryAffiliation))
    , isLocked : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , isFork : OptionalArgument Bool
    }


{-| A list of repositories that the user owns.

  - privacy - If non-null, filters repositories according to privacy
  - orderBy - Ordering options for repositories returned from the connection
  - affiliations - Array of viewer's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the current viewer owns.
  - ownerAffiliations - Array of owner's affiliation options for repositories returned from the connection. For example, OWNER will include only repositories that the organization or user being viewed owns.
  - isLocked - If non-null, filters repositories according to whether they have been locked
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - isFork - If non-null, filters repositories according to whether they are forks of another repository

-}
repositories : (RepositoriesOptionalArguments -> RepositoriesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.RepositoryConnection -> SelectionSet decodesTo GitHub.Object.Organization
repositories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, orderBy = Absent, affiliations = Absent, ownerAffiliations = Absent, isLocked = Absent, after = Absent, before = Absent, first = Absent, last = Absent, isFork = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum GitHub.Enum.RepositoryPrivacy.toString), Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeRepositoryOrder, Argument.optional "affiliations" filledInOptionals.affiliations (Encode.enum GitHub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "ownerAffiliations" filledInOptionals.ownerAffiliations (Encode.enum GitHub.Enum.RepositoryAffiliation.toString |> Encode.maybe |> Encode.list), Argument.optional "isLocked" filledInOptionals.isLocked Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "isFork" filledInOptionals.isFork Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "repositories" optionalArgs object_ identity


type alias RepositoryRequiredArguments =
    { name : String }


{-| Find Repository.

  - name - Name of Repository to find.

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo GitHub.Object.Repository -> SelectionSet (Maybe decodesTo) GitHub.Object.Organization
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


{-| When true the organization requires all members, billing managers, and outside collaborators to enable two-factor authentication.
-}
requiresTwoFactorAuthentication : SelectionSet (Maybe Bool) GitHub.Object.Organization
requiresTwoFactorAuthentication =
    Object.selectionForField "(Maybe Bool)" "requiresTwoFactorAuthentication" [] (Decode.bool |> Decode.nullable)


{-| The HTTP path for this organization.
-}
resourcePath : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The Organization's SAML identity providers
-}
samlIdentityProvider : SelectionSet decodesTo GitHub.Object.OrganizationIdentityProvider -> SelectionSet (Maybe decodesTo) GitHub.Object.Organization
samlIdentityProvider object_ =
    Object.selectionForCompositeField "samlIdentityProvider" [] object_ (identity >> Decode.nullable)


type alias TeamRequiredArguments =
    { slug : String }


{-| Find an organization's team by its slug.

  - slug - The name or slug of the team to find.

-}
team : TeamRequiredArguments -> SelectionSet decodesTo GitHub.Object.Team -> SelectionSet (Maybe decodesTo) GitHub.Object.Organization
team requiredArgs object_ =
    Object.selectionForCompositeField "team" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias TeamsOptionalArguments =
    { privacy : OptionalArgument GitHub.Enum.TeamPrivacy.TeamPrivacy
    , role : OptionalArgument GitHub.Enum.TeamRole.TeamRole
    , query : OptionalArgument String
    , userLogins : OptionalArgument (List String)
    , orderBy : OptionalArgument GitHub.InputObject.TeamOrder
    , ldapMapped : OptionalArgument Bool
    , rootTeamsOnly : OptionalArgument Bool
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of teams in this organization.

  - privacy - If non-null, filters teams according to privacy
  - role - If non-null, filters teams according to whether the viewer is an admin or member on team
  - query - If non-null, filters teams with query on team name and team slug
  - userLogins - User logins to filter by
  - orderBy - Ordering options for teams returned from the connection
  - ldapMapped - If true, filters teams that are mapped to an LDAP Group (Enterprise only)
  - rootTeamsOnly - If true, restrict to only root teams
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
teams : (TeamsOptionalArguments -> TeamsOptionalArguments) -> SelectionSet decodesTo GitHub.Object.TeamConnection -> SelectionSet decodesTo GitHub.Object.Organization
teams fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { privacy = Absent, role = Absent, query = Absent, userLogins = Absent, orderBy = Absent, ldapMapped = Absent, rootTeamsOnly = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "privacy" filledInOptionals.privacy (Encode.enum GitHub.Enum.TeamPrivacy.toString), Argument.optional "role" filledInOptionals.role (Encode.enum GitHub.Enum.TeamRole.toString), Argument.optional "query" filledInOptionals.query Encode.string, Argument.optional "userLogins" filledInOptionals.userLogins (Encode.string |> Encode.list), Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeTeamOrder, Argument.optional "ldapMapped" filledInOptionals.ldapMapped Encode.bool, Argument.optional "rootTeamsOnly" filledInOptionals.rootTeamsOnly Encode.bool, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "teams" optionalArgs object_ identity


{-| The HTTP path listing organization's teams
-}
teamsResourcePath : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
teamsResourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "teamsResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL listing organization's teams
-}
teamsUrl : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
teamsUrl =
    Object.selectionForField "ScalarCodecs.Uri" "teamsUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this organization.
-}
url : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.Organization
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Organization is adminable by the viewer.
-}
viewerCanAdminister : SelectionSet Bool GitHub.Object.Organization
viewerCanAdminister =
    Object.selectionForField "Bool" "viewerCanAdminister" [] Decode.bool


{-| Can the viewer pin repositories and gists to the profile?
-}
viewerCanChangePinnedItems : SelectionSet Bool GitHub.Object.Organization
viewerCanChangePinnedItems =
    Object.selectionForField "Bool" "viewerCanChangePinnedItems" [] Decode.bool


{-| Can the current viewer create new projects on this owner.
-}
viewerCanCreateProjects : SelectionSet Bool GitHub.Object.Organization
viewerCanCreateProjects =
    Object.selectionForField "Bool" "viewerCanCreateProjects" [] Decode.bool


{-| Viewer can create repositories on this organization
-}
viewerCanCreateRepositories : SelectionSet Bool GitHub.Object.Organization
viewerCanCreateRepositories =
    Object.selectionForField "Bool" "viewerCanCreateRepositories" [] Decode.bool


{-| Viewer can create teams on this organization.
-}
viewerCanCreateTeams : SelectionSet Bool GitHub.Object.Organization
viewerCanCreateTeams =
    Object.selectionForField "Bool" "viewerCanCreateTeams" [] Decode.bool


{-| Viewer is an active member of this organization.
-}
viewerIsAMember : SelectionSet Bool GitHub.Object.Organization
viewerIsAMember =
    Object.selectionForField "Bool" "viewerIsAMember" [] Decode.bool


{-| The organization's public profile URL.
-}
websiteUrl : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.Organization
websiteUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "websiteUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)