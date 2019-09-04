-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Enum.RegistryPackageType exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The possible types of a registry package.

  - Npm - An npm registry package.
  - Rubygems - A rubygems registry package.
  - Maven - A maven registry package.
  - Docker - A docker image.
  - Debian - A debian package.
  - Nuget - A nuget package.
  - Python - A python package.

-}
type RegistryPackageType
    = Npm
    | Rubygems
    | Maven
    | Docker
    | Debian
    | Nuget
    | Python


list : List RegistryPackageType
list =
    [ Npm, Rubygems, Maven, Docker, Debian, Nuget, Python ]


decoder : Decoder RegistryPackageType
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NPM" ->
                        Decode.succeed Npm

                    "RUBYGEMS" ->
                        Decode.succeed Rubygems

                    "MAVEN" ->
                        Decode.succeed Maven

                    "DOCKER" ->
                        Decode.succeed Docker

                    "DEBIAN" ->
                        Decode.succeed Debian

                    "NUGET" ->
                        Decode.succeed Nuget

                    "PYTHON" ->
                        Decode.succeed Python

                    _ ->
                        Decode.fail ("Invalid RegistryPackageType type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : RegistryPackageType -> String
toString enum =
    case enum of
        Npm ->
            "NPM"

        Rubygems ->
            "RUBYGEMS"

        Maven ->
            "MAVEN"

        Docker ->
            "DOCKER"

        Debian ->
            "DEBIAN"

        Nuget ->
            "NUGET"

        Python ->
            "PYTHON"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe RegistryPackageType
fromString enumString =
    case enumString of
        "NPM" ->
            Just Npm

        "RUBYGEMS" ->
            Just Rubygems

        "MAVEN" ->
            Just Maven

        "DOCKER" ->
            Just Docker

        "DEBIAN" ->
            Just Debian

        "NUGET" ->
            Just Nuget

        "PYTHON" ->
            Just Python

        _ ->
            Nothing