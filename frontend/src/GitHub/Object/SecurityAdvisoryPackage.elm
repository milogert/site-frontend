-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.SecurityAdvisoryPackage exposing (..)

import GitHub.Enum.SecurityAdvisoryEcosystem
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


{-| The ecosystem the package belongs to, e.g. RUBYGEMS, NPM
-}
ecosystem : SelectionSet GitHub.Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem GitHub.Object.SecurityAdvisoryPackage
ecosystem =
    Object.selectionForField "Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem" "ecosystem" [] GitHub.Enum.SecurityAdvisoryEcosystem.decoder


{-| The package name
-}
name : SelectionSet String GitHub.Object.SecurityAdvisoryPackage
name =
    Object.selectionForField "String" "name" [] Decode.string