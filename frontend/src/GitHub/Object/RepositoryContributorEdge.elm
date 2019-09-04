-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.RepositoryContributorEdge exposing (..)

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


{-| The number of contributions the user has made in the repository.
-}
contributionsCount : SelectionSet Int GitHub.Object.RepositoryContributorEdge
contributionsCount =
    Object.selectionForField "Int" "contributionsCount" [] Decode.int


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String GitHub.Object.RepositoryContributorEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo GitHub.Object.User -> SelectionSet (Maybe decodesTo) GitHub.Object.RepositoryContributorEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)