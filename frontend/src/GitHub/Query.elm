-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module GitHub.Query exposing (..)

import GitHub.Enum.SearchType
import GitHub.Enum.SecurityAdvisoryEcosystem
import GitHub.Enum.SecurityAdvisorySeverity
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
import Json.Decode as Decode exposing (Decoder)


type alias CodeOfConductRequiredArguments =
    { key : String }


{-| Look up a code of conduct by its key

  - key - The code of conduct's key

-}
codeOfConduct : CodeOfConductRequiredArguments -> SelectionSet decodesTo GitHub.Object.CodeOfConduct -> SelectionSet (Maybe decodesTo) RootQuery
codeOfConduct requiredArgs object_ =
    Object.selectionForCompositeField "codeOfConduct" [ Argument.required "key" requiredArgs.key Encode.string ] object_ (identity >> Decode.nullable)


{-| Look up a code of conduct by its key
-}
codesOfConduct : SelectionSet decodesTo GitHub.Object.CodeOfConduct -> SelectionSet (Maybe (List (Maybe decodesTo))) RootQuery
codesOfConduct object_ =
    Object.selectionForCompositeField "codesOfConduct" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


type alias LicenseRequiredArguments =
    { key : String }


{-| Look up an open source license by its key

  - key - The license's downcased SPDX ID

-}
license : LicenseRequiredArguments -> SelectionSet decodesTo GitHub.Object.License -> SelectionSet (Maybe decodesTo) RootQuery
license requiredArgs object_ =
    Object.selectionForCompositeField "license" [ Argument.required "key" requiredArgs.key Encode.string ] object_ (identity >> Decode.nullable)


{-| Return a list of known open source licenses
-}
licenses : SelectionSet decodesTo GitHub.Object.License -> SelectionSet (List (Maybe decodesTo)) RootQuery
licenses object_ =
    Object.selectionForCompositeField "licenses" [] object_ (identity >> Decode.nullable >> Decode.list)


type alias MarketplaceCategoriesOptionalArguments =
    { includeCategories : OptionalArgument (List String)
    , excludeEmpty : OptionalArgument Bool
    , excludeSubcategories : OptionalArgument Bool
    }


{-| Get alphabetically sorted list of Marketplace categories

  - includeCategories - Return only the specified categories.
  - excludeEmpty - Exclude categories with no listings.
  - excludeSubcategories - Returns top level categories only, excluding any subcategories.

-}
marketplaceCategories : (MarketplaceCategoriesOptionalArguments -> MarketplaceCategoriesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.MarketplaceCategory -> SelectionSet (List decodesTo) RootQuery
marketplaceCategories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { includeCategories = Absent, excludeEmpty = Absent, excludeSubcategories = Absent }

        optionalArgs =
            [ Argument.optional "includeCategories" filledInOptionals.includeCategories (Encode.string |> Encode.list), Argument.optional "excludeEmpty" filledInOptionals.excludeEmpty Encode.bool, Argument.optional "excludeSubcategories" filledInOptionals.excludeSubcategories Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceCategories" optionalArgs object_ (identity >> Decode.list)


type alias MarketplaceCategoryOptionalArguments =
    { useTopicAliases : OptionalArgument Bool }


type alias MarketplaceCategoryRequiredArguments =
    { slug : String }


{-| Look up a Marketplace category by its slug.

  - slug - The URL slug of the category.
  - useTopicAliases - Also check topic aliases for the category slug

-}
marketplaceCategory : (MarketplaceCategoryOptionalArguments -> MarketplaceCategoryOptionalArguments) -> MarketplaceCategoryRequiredArguments -> SelectionSet decodesTo GitHub.Object.MarketplaceCategory -> SelectionSet (Maybe decodesTo) RootQuery
marketplaceCategory fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { useTopicAliases = Absent }

        optionalArgs =
            [ Argument.optional "useTopicAliases" filledInOptionals.useTopicAliases Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceCategory" (optionalArgs ++ [ Argument.required "slug" requiredArgs.slug Encode.string ]) object_ (identity >> Decode.nullable)


type alias MarketplaceListingRequiredArguments =
    { slug : String }


{-| Look up a single Marketplace listing

  - slug - Select the listing that matches this slug. It's the short name of the listing used in its URL.

-}
marketplaceListing : MarketplaceListingRequiredArguments -> SelectionSet decodesTo GitHub.Object.MarketplaceListing -> SelectionSet (Maybe decodesTo) RootQuery
marketplaceListing requiredArgs object_ =
    Object.selectionForCompositeField "marketplaceListing" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias MarketplaceListingsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , categorySlug : OptionalArgument String
    , useTopicAliases : OptionalArgument Bool
    , viewerCanAdmin : OptionalArgument Bool
    , adminId : OptionalArgument GitHub.ScalarCodecs.Id
    , organizationId : OptionalArgument GitHub.ScalarCodecs.Id
    , allStates : OptionalArgument Bool
    , slugs : OptionalArgument (List (Maybe String))
    , primaryCategoryOnly : OptionalArgument Bool
    , withFreeTrialsOnly : OptionalArgument Bool
    }


{-| Look up Marketplace listings

  - after - Returns the elements in the list that come after the specified cursor.

  - before - Returns the elements in the list that come before the specified cursor.

  - first - Returns the first _n_ elements from the list.

  - last - Returns the last _n_ elements from the list.

  - categorySlug - Select only listings with the given category.

  - useTopicAliases - Also check topic aliases for the category slug

  - viewerCanAdmin - Select listings to which user has admin access. If omitted, listings visible to the
    viewer are returned.

  - adminId - Select listings that can be administered by the specified user.

  - organizationId - Select listings for products owned by the specified organization.

  - allStates - Select listings visible to the viewer even if they are not approved. If omitted or
    false, only approved listings will be returned.

  - slugs - Select the listings with these slugs, if they are visible to the viewer.

  - primaryCategoryOnly - Select only listings where the primary category matches the given category slug.

  - withFreeTrialsOnly - Select only listings that offer a free trial.

-}
marketplaceListings : (MarketplaceListingsOptionalArguments -> MarketplaceListingsOptionalArguments) -> SelectionSet decodesTo GitHub.Object.MarketplaceListingConnection -> SelectionSet decodesTo RootQuery
marketplaceListings fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, categorySlug = Absent, useTopicAliases = Absent, viewerCanAdmin = Absent, adminId = Absent, organizationId = Absent, allStates = Absent, slugs = Absent, primaryCategoryOnly = Absent, withFreeTrialsOnly = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "categorySlug" filledInOptionals.categorySlug Encode.string, Argument.optional "useTopicAliases" filledInOptionals.useTopicAliases Encode.bool, Argument.optional "viewerCanAdmin" filledInOptionals.viewerCanAdmin Encode.bool, Argument.optional "adminId" filledInOptionals.adminId (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecId), Argument.optional "organizationId" filledInOptionals.organizationId (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecId), Argument.optional "allStates" filledInOptionals.allStates Encode.bool, Argument.optional "slugs" filledInOptionals.slugs (Encode.string |> Encode.maybe |> Encode.list), Argument.optional "primaryCategoryOnly" filledInOptionals.primaryCategoryOnly Encode.bool, Argument.optional "withFreeTrialsOnly" filledInOptionals.withFreeTrialsOnly Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "marketplaceListings" optionalArgs object_ identity


{-| Return information about the GitHub instance
-}
meta : SelectionSet decodesTo GitHub.Object.GitHubMetadata -> SelectionSet decodesTo RootQuery
meta object_ =
    Object.selectionForCompositeField "meta" [] object_ identity


type alias NodeRequiredArguments =
    { id : GitHub.ScalarCodecs.Id }


{-| Fetches an object given its ID.

  - id - ID of the object.

-}
node : NodeRequiredArguments -> SelectionSet decodesTo GitHub.Interface.Node -> SelectionSet (Maybe decodesTo) RootQuery
node requiredArgs object_ =
    Object.selectionForCompositeField "node" [ Argument.required "id" requiredArgs.id (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecId) ] object_ (identity >> Decode.nullable)


type alias NodesRequiredArguments =
    { ids : List GitHub.ScalarCodecs.Id }


{-| Lookup nodes by a list of IDs.

  - ids - The list of node IDs.

-}
nodes : NodesRequiredArguments -> SelectionSet decodesTo GitHub.Interface.Node -> SelectionSet (List (Maybe decodesTo)) RootQuery
nodes requiredArgs object_ =
    Object.selectionForCompositeField "nodes" [ Argument.required "ids" requiredArgs.ids ((GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecId) |> Encode.list) ] object_ (identity >> Decode.nullable >> Decode.list)


type alias OrganizationRequiredArguments =
    { login : String }


{-| Lookup a organization by login.

  - login - The organization's login.

-}
organization : OrganizationRequiredArguments -> SelectionSet decodesTo GitHub.Object.Organization -> SelectionSet (Maybe decodesTo) RootQuery
organization requiredArgs object_ =
    Object.selectionForCompositeField "organization" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


type alias RateLimitOptionalArguments =
    { dryRun : OptionalArgument Bool }


{-| The client's rate limit information.

  - dryRun - If true, calculate the cost for the query without evaluating it

-}
rateLimit : (RateLimitOptionalArguments -> RateLimitOptionalArguments) -> SelectionSet decodesTo GitHub.Object.RateLimit -> SelectionSet (Maybe decodesTo) RootQuery
rateLimit fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { dryRun = Absent }

        optionalArgs =
            [ Argument.optional "dryRun" filledInOptionals.dryRun Encode.bool ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "rateLimit" optionalArgs object_ (identity >> Decode.nullable)


{-| Hack to workaround <https://github.com/facebook/relay/issues/112> re-exposing the root query object
-}
relay : SelectionSet decodesTo RootQuery -> SelectionSet decodesTo RootQuery
relay object_ =
    Object.selectionForCompositeField "relay" [] object_ identity


type alias RepositoryRequiredArguments =
    { owner : String
    , name : String
    }


{-| Lookup a given repository by the owner and repository name.

  - owner - The login field of a user or organization
  - name - The name of the repository

-}
repository : RepositoryRequiredArguments -> SelectionSet decodesTo GitHub.Object.Repository -> SelectionSet (Maybe decodesTo) RootQuery
repository requiredArgs object_ =
    Object.selectionForCompositeField "repository" [ Argument.required "owner" requiredArgs.owner Encode.string, Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


type alias RepositoryOwnerRequiredArguments =
    { login : String }


{-| Lookup a repository owner (ie. either a User or an Organization) by login.

  - login - The username to lookup the owner by.

-}
repositoryOwner : RepositoryOwnerRequiredArguments -> SelectionSet decodesTo GitHub.Interface.RepositoryOwner -> SelectionSet (Maybe decodesTo) RootQuery
repositoryOwner requiredArgs object_ =
    Object.selectionForCompositeField "repositoryOwner" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


type alias ResourceRequiredArguments =
    { url : GitHub.ScalarCodecs.Uri }


{-| Lookup resource by a URL.

  - url - The URL.

-}
resource : ResourceRequiredArguments -> SelectionSet decodesTo GitHub.Interface.UniformResourceLocatable -> SelectionSet (Maybe decodesTo) RootQuery
resource requiredArgs object_ =
    Object.selectionForCompositeField "resource" [ Argument.required "url" requiredArgs.url (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecUri) ] object_ (identity >> Decode.nullable)


type alias SearchOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


type alias SearchRequiredArguments =
    { query : String
    , type_ : GitHub.Enum.SearchType.SearchType
    }


{-| Perform a search across resources.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - query - The search string to look for.
  - type\_ - The types of search items to search within.

-}
search : (SearchOptionalArguments -> SearchOptionalArguments) -> SearchRequiredArguments -> SelectionSet decodesTo GitHub.Object.SearchResultItemConnection -> SelectionSet decodesTo RootQuery
search fillInOptionals requiredArgs object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "search" (optionalArgs ++ [ Argument.required "query" requiredArgs.query Encode.string, Argument.required "type" requiredArgs.type_ (Encode.enum GitHub.Enum.SearchType.toString) ]) object_ identity


type alias SecurityAdvisoriesOptionalArguments =
    { orderBy : OptionalArgument GitHub.InputObject.SecurityAdvisoryOrder
    , identifier : OptionalArgument GitHub.InputObject.SecurityAdvisoryIdentifierFilter
    , publishedSince : OptionalArgument GitHub.ScalarCodecs.DateTime
    , updatedSince : OptionalArgument GitHub.ScalarCodecs.DateTime
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| GitHub Security Advisories

  - orderBy - Ordering options for the returned topics.
  - identifier - Filter advisories by identifier, e.g. GHSA or CVE.
  - publishedSince - Filter advisories to those published since a time in the past.
  - updatedSince - Filter advisories to those updated since a time in the past.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
securityAdvisories : (SecurityAdvisoriesOptionalArguments -> SecurityAdvisoriesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.SecurityAdvisoryConnection -> SelectionSet decodesTo RootQuery
securityAdvisories fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, identifier = Absent, publishedSince = Absent, updatedSince = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeSecurityAdvisoryOrder, Argument.optional "identifier" filledInOptionals.identifier GitHub.InputObject.encodeSecurityAdvisoryIdentifierFilter, Argument.optional "publishedSince" filledInOptionals.publishedSince (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecDateTime), Argument.optional "updatedSince" filledInOptionals.updatedSince (GitHub.ScalarCodecs.codecs |> GitHub.Scalar.unwrapEncoder .codecDateTime), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "securityAdvisories" optionalArgs object_ identity


type alias SecurityAdvisoryRequiredArguments =
    { ghsaId : String }


{-| Fetch a Security Advisory by its GHSA ID

  - ghsaId - GitHub Security Advisory ID.

-}
securityAdvisory : SecurityAdvisoryRequiredArguments -> SelectionSet decodesTo GitHub.Object.SecurityAdvisory -> SelectionSet (Maybe decodesTo) RootQuery
securityAdvisory requiredArgs object_ =
    Object.selectionForCompositeField "securityAdvisory" [ Argument.required "ghsaId" requiredArgs.ghsaId Encode.string ] object_ (identity >> Decode.nullable)


type alias SecurityVulnerabilitiesOptionalArguments =
    { orderBy : OptionalArgument GitHub.InputObject.SecurityVulnerabilityOrder
    , ecosystem : OptionalArgument GitHub.Enum.SecurityAdvisoryEcosystem.SecurityAdvisoryEcosystem
    , package : OptionalArgument String
    , severities : OptionalArgument (List GitHub.Enum.SecurityAdvisorySeverity.SecurityAdvisorySeverity)
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Software Vulnerabilities documented by GitHub Security Advisories

  - orderBy - Ordering options for the returned topics.
  - ecosystem - An ecosystem to filter vulnerabilities by.
  - package - A package name to filter vulnerabilities by.
  - severities - A list of severities to filter vulnerabilities by.
  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
securityVulnerabilities : (SecurityVulnerabilitiesOptionalArguments -> SecurityVulnerabilitiesOptionalArguments) -> SelectionSet decodesTo GitHub.Object.SecurityVulnerabilityConnection -> SelectionSet decodesTo RootQuery
securityVulnerabilities fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { orderBy = Absent, ecosystem = Absent, package = Absent, severities = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "orderBy" filledInOptionals.orderBy GitHub.InputObject.encodeSecurityVulnerabilityOrder, Argument.optional "ecosystem" filledInOptionals.ecosystem (Encode.enum GitHub.Enum.SecurityAdvisoryEcosystem.toString), Argument.optional "package" filledInOptionals.package Encode.string, Argument.optional "severities" filledInOptionals.severities (Encode.enum GitHub.Enum.SecurityAdvisorySeverity.toString |> Encode.list), Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "securityVulnerabilities" optionalArgs object_ identity


type alias SponsorsListingRequiredArguments =
    { slug : String }


{-| Look up a single Sponsors Listing

  - slug - Select the Sponsors listing which matches this slug

-}
sponsorsListing : SponsorsListingRequiredArguments -> SelectionSet decodesTo GitHub.Object.SponsorsListing -> SelectionSet (Maybe decodesTo) RootQuery
sponsorsListing requiredArgs object_ =
    Object.selectionForCompositeField "sponsorsListing" [ Argument.required "slug" requiredArgs.slug Encode.string ] object_ (identity >> Decode.nullable)


type alias TopicRequiredArguments =
    { name : String }


{-| Look up a topic by name.

  - name - The topic's name.

-}
topic : TopicRequiredArguments -> SelectionSet decodesTo GitHub.Object.Topic -> SelectionSet (Maybe decodesTo) RootQuery
topic requiredArgs object_ =
    Object.selectionForCompositeField "topic" [ Argument.required "name" requiredArgs.name Encode.string ] object_ (identity >> Decode.nullable)


type alias UserRequiredArguments =
    { login : String }


{-| Lookup a user by login.

  - login - The user's login.

-}
user : UserRequiredArguments -> SelectionSet decodesTo GitHub.Object.User -> SelectionSet (Maybe decodesTo) RootQuery
user requiredArgs object_ =
    Object.selectionForCompositeField "user" [ Argument.required "login" requiredArgs.login Encode.string ] object_ (identity >> Decode.nullable)


{-| The currently authenticated user.
-}
viewer : SelectionSet decodesTo GitHub.Object.User -> SelectionSet decodesTo RootQuery
viewer object_ =
    Object.selectionForCompositeField "viewer" [] object_ identity