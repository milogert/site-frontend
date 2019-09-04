-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.OrganizationInvitation exposing (..)

import GitHub.Enum.OrganizationInvitationRole
import GitHub.Enum.OrganizationInvitationType
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


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GitHub.ScalarCodecs.DateTime GitHub.Object.OrganizationInvitation
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The email address of the user invited to the organization.
-}
email : SelectionSet (Maybe String) GitHub.Object.OrganizationInvitation
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


id : SelectionSet GitHub.ScalarCodecs.Id GitHub.Object.OrganizationInvitation
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The type of invitation that was sent (e.g. email, user).
-}
invitationType : SelectionSet GitHub.Enum.OrganizationInvitationType.OrganizationInvitationType GitHub.Object.OrganizationInvitation
invitationType =
    Object.selectionForField "Enum.OrganizationInvitationType.OrganizationInvitationType" "invitationType" [] GitHub.Enum.OrganizationInvitationType.decoder


{-| The user who was invited to the organization.
-}
invitee : SelectionSet decodesTo GitHub.Object.User -> SelectionSet (Maybe decodesTo) GitHub.Object.OrganizationInvitation
invitee object_ =
    Object.selectionForCompositeField "invitee" [] object_ (identity >> Decode.nullable)


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo GitHub.Object.User -> SelectionSet decodesTo GitHub.Object.OrganizationInvitation
inviter object_ =
    Object.selectionForCompositeField "inviter" [] object_ identity


{-| The organization the invite is for
-}
organization : SelectionSet decodesTo GitHub.Object.Organization -> SelectionSet decodesTo GitHub.Object.OrganizationInvitation
organization object_ =
    Object.selectionForCompositeField "organization" [] object_ identity


{-| The user's pending role in the organization (e.g. member, owner).
-}
role : SelectionSet GitHub.Enum.OrganizationInvitationRole.OrganizationInvitationRole GitHub.Object.OrganizationInvitation
role =
    Object.selectionForField "Enum.OrganizationInvitationRole.OrganizationInvitationRole" "role" [] GitHub.Enum.OrganizationInvitationRole.decoder