(define-module (infra-arcana)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (guix build-system cmake)
  #:use-module (guix download)
  #:use-module (guix licenses)
  #:use-module (gnu packages)
  #:use-module (gnu packages base)
  #:use-module (gnu packages commencement)
  #:use-module (gnu packages compression)
)

(define-public infra-arcana
  (package
    (name "infra-arcana")
    (version "20.0")
    (license mpl2.0)
    ;(supported-systems '("x86_64-linux" "aarch64-linux"))
    (supported-systems '("aarch64-linux"))
    (source (origin
              (method url-fetch)
              (uri (string-append "https://gitlab.com/martin-tornqvist/ia/-/archive/v" version "/ia-v" version ".tar.gz"
              ))
              (sha256
                (base32 
                  "1b4q166p3mv1jk2d7dq8phg616nl2qdfzqn6cijn7n73prdg1acx"
                )
              )
    ))
    (build-system cmake-build-system)
    (synopsis "Infra Arcana")
    (description 
      "Infra Arcana is a Roguelike set in the early 20th century. The goal is to explore the lair of a dreaded cult called The Church of Starry Wisdom. Buried deep beneath their hallowed grounds lies an artifact called The Shining Trapezohedron - a window to all secrets of the universe. Your ultimate goal is to unearth this artifact.\n\nThe theme and inspiration for this game comes mainly from the horror fiction writer H.P. Lovecraft. There is a Lore section on this site that describes some of his mythology. The game also draws flavor from various B-horror movies, as well as the first-person shooter PC game Blood.\n\nInfra Arcana adheres to the virtues of the Roguelike genre - high replay value and challenging tactical gameplay."
    )
    (home-page "https://sites.google.com/site/infraarcana/")
  )
)
