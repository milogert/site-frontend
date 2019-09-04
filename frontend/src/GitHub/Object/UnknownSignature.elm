-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.UnknownSignature exposing (..)

import GitHub.Enum.GitSignatureState
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


{-| Email used to sign this object.
-}
email : SelectionSet String GitHub.Object.UnknownSignature
email =
    Object.selectionForField "String" "email" [] Decode.string


{-| True if the signature is valid and verified by GitHub.
-}
isValid : SelectionSet Bool GitHub.Object.UnknownSignature
isValid =
    Object.selectionForField "Bool" "isValid" [] Decode.bool


{-| Payload for GPG signing object. Raw ODB object without the signature header.
-}
payload : SelectionSet String GitHub.Object.UnknownSignature
payload =
    Object.selectionForField "String" "payload" [] Decode.string


{-| ASCII-armored signature header from object.
-}
signature : SelectionSet String GitHub.Object.UnknownSignature
signature =
    Object.selectionForField "String" "signature" [] Decode.string


{-| GitHub user corresponding to the email signing this commit.
-}
signer : SelectionSet decodesTo GitHub.Object.User -> SelectionSet (Maybe decodesTo) GitHub.Object.UnknownSignature
signer object_ =
    Object.selectionForCompositeField "signer" [] object_ (identity >> Decode.nullable)


{-| The state of this signature. `VALID` if signature is valid and verified by GitHub, otherwise represents reason why signature is considered invalid.
-}
state : SelectionSet GitHub.Enum.GitSignatureState.GitSignatureState GitHub.Object.UnknownSignature
state =
    Object.selectionForField "Enum.GitSignatureState.GitSignatureState" "state" [] GitHub.Enum.GitSignatureState.decoder


{-| True if the signature was made with GitHub's signing key.
-}
wasSignedByGitHub : SelectionSet Bool GitHub.Object.UnknownSignature
wasSignedByGitHub =
    Object.selectionForField "Bool" "wasSignedByGitHub" [] Decode.bool