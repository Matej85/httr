% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oauth-token.r
\name{oauth1.0_token}
\alias{oauth1.0_token}
\title{Generate an oauth1.0 token.}
\usage{
oauth1.0_token(endpoint, app, permission = NULL, as_header = TRUE,
  private_key = NULL, cache = getOption("httr_oauth_cache"))
}
\arguments{
\item{endpoint}{An OAuth endpoint, created by \code{\link{oauth_endpoint}}}

\item{app}{An OAuth consumer application, created by
\code{\link{oauth_app}}}

\item{permission}{optional, a string of permissions to ask for.}

\item{as_header}{If \code{TRUE}, the default, sends oauth in header.
If \code{FALSE}, adds as parameter to url.}

\item{private_key}{Optional, a key provided by \code{\link[openssl]{read_key}}.
Used for signed OAuth 1.0.}

\item{cache}{A logical value or a string. \code{TRUE} means to cache
using the default cache file \code{.httr-oauth}, \code{FALSE} means
don't cache, and \code{NA} means to guess using some sensible heuristics.
A string means use the specified path as the cache file.}
}
\value{
A \code{Token1.0} reference class (RC) object.
}
\description{
This is the final object in the OAuth dance - it encapsulates the app,
the endpoint, other parameters and the received credentials.
}
\details{
See \code{\link{Token}} for full details about the token object, and the
caching policies used to store credentials across sessions.
}
\seealso{
Other OAuth: \code{\link{oauth2.0_token}},
  \code{\link{oauth_app}}, \code{\link{oauth_endpoint}},
  \code{\link{oauth_service_token}}
}
