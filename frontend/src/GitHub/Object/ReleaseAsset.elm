-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Object.ReleaseAsset exposing (..)

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


{-| The asset's content-type
-}
contentType : SelectionSet String GitHub.Object.ReleaseAsset
contentType =
    Object.selectionForField "String" "contentType" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet GitHub.ScalarCodecs.DateTime GitHub.Object.ReleaseAsset
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of times this asset was downloaded
-}
downloadCount : SelectionSet Int GitHub.Object.ReleaseAsset
downloadCount =
    Object.selectionForField "Int" "downloadCount" [] Decode.int


{-| Identifies the URL where you can download the release asset via the browser.
-}
downloadUrl : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.ReleaseAsset
downloadUrl =
    Object.selectionForField "ScalarCodecs.Uri" "downloadUrl" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


id : SelectionSet GitHub.ScalarCodecs.Id GitHub.Object.ReleaseAsset
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the title of the release asset.
-}
name : SelectionSet String GitHub.Object.ReleaseAsset
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Release that the asset is associated with
-}
release : SelectionSet decodesTo GitHub.Object.Release -> SelectionSet (Maybe decodesTo) GitHub.Object.ReleaseAsset
release object_ =
    Object.selectionForCompositeField "release" [] object_ (identity >> Decode.nullable)


{-| The size (in bytes) of the asset
-}
size : SelectionSet Int GitHub.Object.ReleaseAsset
size =
    Object.selectionForField "Int" "size" [] Decode.int


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet GitHub.ScalarCodecs.DateTime GitHub.Object.ReleaseAsset
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The user that performed the upload
-}
uploadedBy : SelectionSet decodesTo GitHub.Object.User -> SelectionSet decodesTo GitHub.Object.ReleaseAsset
uploadedBy object_ =
    Object.selectionForCompositeField "uploadedBy" [] object_ identity


{-| Identifies the URL of the release asset.
-}
url : SelectionSet GitHub.ScalarCodecs.Uri GitHub.Object.ReleaseAsset
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)