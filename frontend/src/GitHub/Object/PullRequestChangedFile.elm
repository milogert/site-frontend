-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.PullRequestChangedFile exposing (..)

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


{-| The number of additions to the file.
-}
additions : SelectionSet Int GitHub.Object.PullRequestChangedFile
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


{-| The number of deletions to the file.
-}
deletions : SelectionSet Int GitHub.Object.PullRequestChangedFile
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


{-| The path of the file.
-}
path : SelectionSet String GitHub.Object.PullRequestChangedFile
path =
    Object.selectionForField "String" "path" [] Decode.string