# dev function

g <- rep(1:3, length.out = 9)
ord <- order(g)
ord
x <- 11:19
x[ord]
groupSort <- function(x, g) {
  ord <- order(g)
  x[ord]
}
groupSort(x, g)
library(usethis)
create_package("~/Desktop/demopkg")

# dev in package

x <- 11:19
g <- rep(1:3, length.out = 9)
devtools::load_all()
groupSort(x, g)
devtools::load_all()
groupSort(x, g, decreasing = TRUE)
decreasing <- TRUE
order(g, decreasing = decreasing)

# adding rcpp

library(usethis)
use_rcpp("Manhattan")

# first time after running adding cpp
devtools::document()

devtools::load_all()
Manhattan(a = c(1, 3), b = c(1, 7))

usethis::use_package("DT", "Suggests")
usethis::use_package("shiny", "Suggests")

usethis::use_git()
usethis::use_github()
usethis::use_github_action(
    url = "https://raw.githubusercontent.com/r-wasm/actions/v2/examples/deploy-cran-repo.yml"
)

shinylive::export(appdir = "inst/shiny", destdir = "docs")

usethis::use_mit_license()

# don't forget to add packages file
# also deploy github pages
# I think I could
# publish on r-universe
# use shinylive::export and somehow install binary from r-universe
# being sure to in exclude docs from .Rbuildignore

add library(demopkg) to app.R

rsconnect::writeManifest(appDir = "inst/shiny")

need to export groupSort!!

usethis::use_roxyge

# PAT with repo access

remotes::install_github("hturner/demopkg", upgrade = "never")

# usethis::edit_r_environ() # add GITHUB_PAT

On shinyapps.io, go to Account > Profile > Update Authentification button
- check the box allowing access to private respos on GitHub

# N.B. "supershiny" is my account name on shinyapps.io!
rsconnect::setAccountInfo(name='supershiny',
                          token='824A0F1EAB1831F8F609432BFEC42FF0',
                          secret='mOTnMeHkQTjWO60W7TJamaKFQygD5YNOiYHYiX1W')

rsconnect::deployApp("inst/shiny",
                     appName = packageDescription("demopkg")$RemoteSha)

rsconnect::deployments("inst/shiny")
rsconnect::applications()


