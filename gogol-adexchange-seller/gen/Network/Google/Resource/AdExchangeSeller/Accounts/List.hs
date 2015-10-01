{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all accounts available to this Ad Exchange account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList'
    , AccountsList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alKey
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsList@ which the
-- 'AccountsList'' request conforms to.
type AccountsListResource =
     "accounts" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Accounts

-- | List all accounts available to this Ad Exchange account.
--
-- /See:/ 'accountsList'' smart constructor.
data AccountsList' = AccountsList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alUserIp      :: !(Maybe Text)
    , _alKey         :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !(Maybe Int32)
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
accountsList'
    :: AccountsList'
accountsList' =
    AccountsList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = Nothing
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AccountsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AccountsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AccountsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AccountsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | A continuation token, used to page through accounts. To retrieve the
-- next page, set this parameter to the value of \"nextPageToken\" from the
-- previous response.
alPageToken :: Lens' AccountsList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AccountsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | The maximum number of accounts to include in the response, used for
-- paging.
alMaxResults :: Lens' AccountsList' (Maybe Int32)
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AccountsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AccountsList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AccountsList' where
        type Rs AccountsList' = Accounts
        request = requestWithRoute defReq adExchangeSellerURL
        requestWithRoute r u AccountsList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alUserIp
              _alKey
              _alPageToken
              _alOauthToken
              _alMaxResults
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsListResource)
                      r
                      u