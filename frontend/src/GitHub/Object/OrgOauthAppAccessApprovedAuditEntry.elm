-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.OrgOauthAppAccessApprovedAuditEntry exposing (..)

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


{-| The action name
-}
action : SelectionSet String GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
action =
    Object.selectionForField "String" "action" [] Decode.string


{-| The user who initiated the action
-}
actor : SelectionSet decodesTo GitHub.Union.AuditEntryActor -> SelectionSet (Maybe decodesTo) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| The IP address of the actor
-}
actorIp : SelectionSet (Maybe String) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actorIp =
    Object.selectionForField "(Maybe String)" "actorIp" [] (Decode.string |> Decode.nullable)


{-| A readable representation of the actor's location
-}
actorLocation : SelectionSet decodesTo GitHub.Object.ActorLocation -> SelectionSet (Maybe decodesTo) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actorLocation object_ =
    Object.selectionForCompositeField "actorLocation" [] object_ (identity >> Decode.nullable)


{-| The username of the user who initiated the action
-}
actorLogin : SelectionSet (Maybe String) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actorLogin =
    Object.selectionForField "(Maybe String)" "actorLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the actor.
-}
actorResourcePath : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actorResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the actor.
-}
actorUrl : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
actorUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "actorUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The time the action was initiated
-}
createdAt : SelectionSet GitHub.ScalarCodecs.PreciseDateTime GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
createdAt =
    Object.selectionForField "ScalarCodecs.PreciseDateTime" "createdAt" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecPreciseDateTime |> .decoder)


id : SelectionSet GitHub.ScalarCodecs.Id GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The name of the OAuth Application.
-}
oauthApplicationName : SelectionSet (Maybe String) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
oauthApplicationName =
    Object.selectionForField "(Maybe String)" "oauthApplicationName" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the OAuth Application
-}
oauthApplicationResourcePath : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
oauthApplicationResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "oauthApplicationResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the OAuth Application
-}
oauthApplicationUrl : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
oauthApplicationUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "oauthApplicationUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The Organization associated with the Audit Entry.
-}
organization : SelectionSet decodesTo GitHub.Object.Organization -> SelectionSet (Maybe decodesTo) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ (identity >> Decode.nullable)


{-| The name of the Organization.
-}
organizationName : SelectionSet (Maybe String) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
organizationName =
    Object.selectionForField "(Maybe String)" "organizationName" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the organization
-}
organizationResourcePath : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
organizationResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the organization
-}
organizationUrl : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
organizationUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "organizationUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The user affected by the action
-}
user : SelectionSet decodesTo GitHub.Object.User -> SelectionSet (Maybe decodesTo) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
user object_ =
    Object.selectionForCompositeField "user" [] object_ (identity >> Decode.nullable)


{-| For actions involving two users, the actor is the initiator and the user is the affected user.
-}
userLogin : SelectionSet (Maybe String) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
userLogin =
    Object.selectionForField "(Maybe String)" "userLogin" [] (Decode.string |> Decode.nullable)


{-| The HTTP path for the user.
-}
userResourcePath : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
userResourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userResourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for the user.
-}
userUrl : SelectionSet (Maybe GitHub.ScalarCodecs.Uri) GitHub.Object.OrgOauthAppAccessApprovedAuditEntry
userUrl =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "userUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)