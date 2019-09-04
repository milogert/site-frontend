-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.RateLimit exposing (..)

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


{-| The point cost for the current query counting against the rate limit.
-}
cost : SelectionSet Int GitHub.Object.RateLimit
cost =
    Object.selectionForField "Int" "cost" [] Decode.int


{-| The maximum number of points the client is permitted to consume in a 60 minute window.
-}
limit : SelectionSet Int GitHub.Object.RateLimit
limit =
    Object.selectionForField "Int" "limit" [] Decode.int


{-| The maximum number of nodes this query may return
-}
nodeCount : SelectionSet Int GitHub.Object.RateLimit
nodeCount =
    Object.selectionForField "Int" "nodeCount" [] Decode.int


{-| The number of points remaining in the current rate limit window.
-}
remaining : SelectionSet Int GitHub.Object.RateLimit
remaining =
    Object.selectionForField "Int" "remaining" [] Decode.int


{-| The time at which the current rate limit window resets in UTC epoch seconds.
-}
resetAt : SelectionSet GitHub.ScalarCodecs.DateTime GitHub.Object.RateLimit
resetAt =
    Object.selectionForField "ScalarCodecs.DateTime" "resetAt" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)