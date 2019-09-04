-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Union.PermissionGranter exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onOrganization : SelectionSet decodesTo GitHub.Object.Organization
    , onRepository : SelectionSet decodesTo GitHub.Object.Repository
    , onTeam : SelectionSet decodesTo GitHub.Object.Team
    }


{-| Build up a selection for this Union by passing in a Fragments record.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo GitHub.Union.PermissionGranter
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Organization" selections.onOrganization
        , Object.buildFragment "Repository" selections.onRepository
        , Object.buildFragment "Team" selections.onTeam
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeam = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }