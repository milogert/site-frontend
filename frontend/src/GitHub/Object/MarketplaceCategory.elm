-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.MarketplaceCategory exposing (..)

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


{-| The category's description.
-}
description : SelectionSet (Maybe String) GitHub.Object.MarketplaceCategory
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| The technical description of how apps listed in this category work with GitHub.
-}
howItWorks : SelectionSet (Maybe String) GitHub.Object.MarketplaceCategory
howItWorks =
    Object.selectionForField "(Maybe String)" "howItWorks" [] (Decode.string |> Decode.nullable)


id : SelectionSet GitHub.ScalarCodecs.Id GitHub.Object.MarketplaceCategory
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The category's name.
-}
name : SelectionSet String GitHub.Object.MarketplaceCategory
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| How many Marketplace listings have this as their primary category.
-}
primaryListingCount : SelectionSet Int GitHub.Object.MarketplaceCategory
primaryListingCount =
    Object.selectionForField "Int" "primaryListingCount" [] Decode.int


{-| The HTTP path for this Marketplace category.
-}
resourcePath : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.MarketplaceCategory
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| How many Marketplace listings have this as their secondary category.
-}
secondaryListingCount : SelectionSet Int GitHub.Object.MarketplaceCategory
secondaryListingCount =
    Object.selectionForField "Int" "secondaryListingCount" [] Decode.int


{-| The short name of the category used in its URL.
-}
slug : SelectionSet String GitHub.Object.MarketplaceCategory
slug =
    Object.selectionForField "String" "slug" [] Decode.string


{-| The HTTP URL for this Marketplace category.
-}
url : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.MarketplaceCategory
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)