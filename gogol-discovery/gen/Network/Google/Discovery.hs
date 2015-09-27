{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Discovery
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Lets you discover information about other Google APIs, such as what APIs
-- are available, the resource and method details for each API.
--
-- /See:/ <https://developers.google.com/discovery/ APIs Discovery Service Reference>
module Network.Google.Discovery
    (
    -- * Resources
      Discovery
    , ApisAPI
    , ApisList
    , ApisGetRest

    -- * Types

    -- ** DirectoryList
    , DirectoryList
    , directoryList
    , dlKind
    , dlItems
    , dlDiscoveryVersion

    -- ** DirectoryListIconsItemItems
    , DirectoryListIconsItemItems
    , directoryListIconsItemItems
    , dliiiX16
    , dliiiX32

    -- ** DirectoryListItemItems
    , DirectoryListItemItems
    , directoryListItemItems
    , dliiDiscoveryLink
    , dliiPreferred
    , dliiKind
    , dliiIcons
    , dliiName
    , dliiVersion
    , dliiDocumentationLink
    , dliiId
    , dliiLabels
    , dliiTitle
    , dliiDescription
    , dliiDiscoveryRestUrl

    -- ** JsonSchema
    , JsonSchema
    , jsonSchema
    , jsAnnotations
    , jsVariant
    , jsLocation
    , jsRef
    , jsPattern
    , jsMaximum
    , jsDefault
    , jsFormat
    , jsItems
    , jsMinimum
    , jsRequired
    , jsId
    , jsAdditionalProperties
    , jsType
    , jsEnum
    , jsRepeated
    , jsReadOnly
    , jsEnumDescriptions
    , jsDescription
    , jsProperties

    -- ** JsonSchemaAnnotations
    , JsonSchemaAnnotations
    , jsonSchemaAnnotations
    , jsaRequired

    -- ** JsonSchemaItemMapVariant
    , JsonSchemaItemMapVariant
    , jsonSchemaItemMapVariant
    , jsimvRef
    , jsimvTypeValue

    -- ** JsonSchemaProperties
    , JsonSchemaProperties
    , jsonSchemaProperties

    -- ** JsonSchemaVariant
    , JsonSchemaVariant
    , jsonSchemaVariant
    , jsvDiscriminant
    , jsvMap

    -- ** RestDescription
    , RestDescription
    , restDescription
    , rdEtag
    , rdSchemas
    , rdServicePath
    , rdBasePath
    , rdKind
    , rdExponentialBackoffDefault
    , rdAuth
    , rdIcons
    , rdBaseUrl
    , rdProtocol
    , rdOwnerName
    , rdResources
    , rdOwnerDomain
    , rdBatchPath
    , rdMethods
    , rdName
    , rdPackagePath
    , rdFeatures
    , rdVersion
    , rdParameters
    , rdDocumentationLink
    , rdRootUrl
    , rdId
    , rdCanonicalName
    , rdLabels
    , rdDiscoveryVersion
    , rdTitle
    , rdRevision
    , rdDescription

    -- ** RestDescriptionAuth
    , RestDescriptionAuth
    , restDescriptionAuth
    , rdaOauth2

    -- ** RestDescriptionIcons
    , RestDescriptionIcons
    , restDescriptionIcons
    , rdiX16
    , rdiX32

    -- ** RestDescriptionMethods
    , RestDescriptionMethods
    , restDescriptionMethods

    -- ** RestDescriptionOauth2Auth
    , RestDescriptionOauth2Auth
    , restDescriptionOauth2Auth
    , rdoaScopes

    -- ** RestDescriptionParameters
    , RestDescriptionParameters
    , restDescriptionParameters

    -- ** RestDescriptionResources
    , RestDescriptionResources
    , restDescriptionResources

    -- ** RestDescriptionSchemas
    , RestDescriptionSchemas
    , restDescriptionSchemas

    -- ** RestDescriptionScopesOauth2Auth
    , RestDescriptionScopesOauth2Auth
    , restDescriptionScopesOauth2Auth

    -- ** RestMethod
    , RestMethod
    , restMethod
    , rmSupportsMediaDownload
    , rmParameterOrder
    , rmMediaUpload
    , rmHttpMethod
    , rmPath
    , rmResponse
    , rmSupportsMediaUpload
    , rmScopes
    , rmSupportsSubscription
    , rmParameters
    , rmId
    , rmEtagRequired
    , rmUseMediaDownloadService
    , rmDescription
    , rmRequest

    -- ** RestMethodMediaUpload
    , RestMethodMediaUpload
    , restMethodMediaUpload
    , rmmuProtocols
    , rmmuAccept
    , rmmuMaxSize

    -- ** RestMethodParameters
    , RestMethodParameters
    , restMethodParameters

    -- ** RestMethodProtocolsMediaUpload
    , RestMethodProtocolsMediaUpload
    , restMethodProtocolsMediaUpload
    , rmpmuSimple
    , rmpmuResumable

    -- ** RestMethodRequest
    , RestMethodRequest
    , restMethodRequest
    , rmrRef
    , rmrParameterName

    -- ** RestMethodResponse
    , RestMethodResponse
    , restMethodResponse
    , rRef

    -- ** RestMethodResumableProtocolsMediaUpload
    , RestMethodResumableProtocolsMediaUpload
    , restMethodResumableProtocolsMediaUpload
    , rmrpmuPath
    , rmrpmuMultipart

    -- ** RestMethodSimpleProtocolsMediaUpload
    , RestMethodSimpleProtocolsMediaUpload
    , restMethodSimpleProtocolsMediaUpload
    , rmspmuPath
    , rmspmuMultipart

    -- ** RestResource
    , RestResource
    , restResource
    , rrResources
    , rrMethods

    -- ** RestResourceMethods
    , RestResourceMethods
    , restResourceMethods

    -- ** RestResourceResources
    , RestResourceResources
    , restResourceResources
    ) where

import           Network.Google.Discovery.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type Discovery = ApisAPI

type ApisAPI = ApisList :<|> ApisGetRest

-- | Retrieve the list of APIs supported at this endpoint.
type ApisList =
     "discovery" :> "v1" :> "apis" :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "preferred" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "name" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Retrieve the description of a particular version of an api.
type ApisGetRest =
     "discovery" :> "v1" :> "apis" :> Capture "api" Text
       :> Capture "version" Text
       :> "rest"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text