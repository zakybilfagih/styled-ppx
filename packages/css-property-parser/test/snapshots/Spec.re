open Standard;
open Modifier;
open Rule.Match;
open Driver;

let rec _legacy_gradient = [%value.rec
  "<-webkit-gradient()> | <-legacy-linear-gradient> | <-legacy-repeating-linear-gradient> | <-legacy-radial-gradient> | <-legacy-repeating-radial-gradient>"
]
and _legacy_linear_gradient = [%value.rec
  "-moz-linear-gradient( <-legacy-linear-gradient-arguments> ) | -webkit-linear-gradient( <-legacy-linear-gradient-arguments> ) | -o-linear-gradient( <-legacy-linear-gradient-arguments> )"
]
and property_height = [%value.rec
  "'auto' | <extended-length> | <extended-percentage> | 'min-content' | 'max-content' | 'fit-content' | fit-content( <extended-length> | <extended-percentage> )"
]


and calc_product = [%value.rec
  "<calc-value> [ '*' <calc-value> | '/' <number> ]*"
]
and calc_sum = [%value.rec "<calc-product> [ [ '+' | '-' ] <calc-product> ]*"]
/* and calc_value = [%value.rec "<number> | <dimension> | <extended-percentage> | <calc>"] */
and calc_value = [%value.rec
  "<number> | <extended-length> | <extended-percentage> | <extended-angle> | <extended-time>"
];

let check_map =
  StringMap.of_seq(
    List.to_seq([
      ("linear-gradient", _legacy_gradient),
      ("radial-gradient", _legacy_linear_gradient),
    ]),
  );
