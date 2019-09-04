-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.DeleteProjectPayload exposing (..)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) GitHub.Object.DeleteProjectPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The repository or organization the project was removed from.
-}
owner : SelectionSet decodesTo GitHub.Interface.ProjectOwner -> SelectionSet (Maybe decodesTo) GitHub.Object.DeleteProjectPayload
owner object_ =
    Object.selectionForCompositeField "owner" [] object_ (identity >> Decode.nullable)