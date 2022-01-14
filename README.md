# SafariBooks Compose

This is a tiny `docker-compose` wrapper around the actual useful project
[SafariBooks](https://github.com/lorenzodifuccia/safaribooks). Please take a
look on it.

## DISCLAIMER

This project is meant to satisfy **my own** need to "download and convert a
book from Safari Books using my SSO credentials without installing things
directly on my machine".

Please send all pull request to the
[original project](https://github.com/lorenzodifuccia/safaribooks) ;)

## How to build

1. Have `git`, `docker` and `docker-compose` installed
2. Download this project with:`git clone git@github.com:blabos/safari-books-compose.git`
3. Enter the project directory with `cd safari-books-compose`
4. Build docker image with `docker build -t safari-books .`

## How to Run

1. Get your SSO cookies [following these steps](https://github.com/lorenzodifuccia/safaribooks/issues/150#issuecomment-555423085)
and put them into `cookies.json`
2. Just run `docker-compose run get-book <BOOK_ID>`

Booth `epub` and `mobi` versions will be inside the directory `./Books`.

## Thanks

You can give credits for the real hard work to [Lorenzo Di Fuccia](https://github.com/lorenzodifuccia).
