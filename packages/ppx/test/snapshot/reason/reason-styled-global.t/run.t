  $ refmt --parse re --print ml input.re > output.ml
  $ standalone --impl output.ml -o output.ml
  $ refmt --parse ml --print re output.ml
  ignore(
    CSS.global([|
      CSS.selectorMany(
        [|{js|html|js}|],
        [|
          CSS.lineHeight(`abs(1.15)),
          CSS.unsafe({js|textSizeAdjust|js}, {js|100%|js}),
        |],
      ),
      CSS.selectorMany([|{js|body|js}|], [|CSS.margin(`zero)|]),
      CSS.selectorMany([|{js|main|js}|], [|CSS.display(`block)|]),
      CSS.selectorMany(
        [|{js|h1|js}|],
        [|CSS.fontSize(`em(2.)), CSS.margin2(~v=`em(0.67), ~h=`zero)|],
      ),
      CSS.selectorMany(
        [|{js|hr|js}|],
        [|
          CSS.boxSizing(`contentBox),
          CSS.height(`zero),
          CSS.overflow(`visible),
        |],
      ),
      CSS.selectorMany(
        [|{js|pre|js}|],
        [|
          CSS.fontFamilies([|`monospace, `monospace|]),
          CSS.fontSize(`em(1.)),
        |],
      ),
      CSS.selectorMany([|{js|a|js}|], [|CSS.backgroundColor(`transparent)|]),
      CSS.selectorMany(
        [|{js|abbr[title]|js}|],
        [|
          CSS.unsafe({js|borderBottom|js}, {js|none|js}),
          CSS.textDecorations(
            ~line=?
              Some(
                CSS.Types.TextDecorationLine.Value.make(
                  ~underline=?Some(true),
                  ~overline=?None,
                  ~lineThrough=?None,
                  ~blink=?None,
                  (),
                ),
              ),
            ~thickness=?None,
            ~style=?None,
            ~color=?None,
            (),
          ),
          CSS.textDecorations(
            ~line=?
              Some(
                CSS.Types.TextDecorationLine.Value.make(
                  ~underline=?Some(true),
                  ~overline=?None,
                  ~lineThrough=?None,
                  ~blink=?None,
                  (),
                ),
              ),
            ~thickness=?None,
            ~style=?Some(`dotted),
            ~color=?None,
            (),
          ),
        |],
      ),
      CSS.selectorMany(
        [|{js|b|js}, {js|strong|js}|],
        [|CSS.fontWeight(`bolder)|],
      ),
      CSS.selectorMany(
        [|{js|code|js}, {js|kbd|js}, {js|samp|js}|],
        [|
          CSS.fontFamilies([|`monospace, `monospace|]),
          CSS.fontSize(`em(1.)),
        |],
      ),
      CSS.selectorMany([|{js|small|js}|], [|CSS.fontSize(`percent(80.))|]),
      CSS.selectorMany(
        [|{js|sub|js}, {js|sup|js}|],
        [|
          CSS.fontSize(`percent(75.)),
          CSS.lineHeight(`zero),
          CSS.unsafe({js|position|js}, {js|relative|js}),
          CSS.verticalAlign(`baseline),
        |],
      ),
      CSS.selectorMany([|{js|sub|js}|], [|CSS.bottom(`em(-0.25))|]),
      CSS.selectorMany([|{js|sup|js}|], [|CSS.top(`em(-0.5))|]),
      CSS.selectorMany([|{js|img|js}|], [|CSS.borderStyle(`none)|]),
      CSS.selectorMany(
        [|
          {js|button|js},
          {js|input|js},
          {js|optgroup|js},
          {js|select|js},
          {js|textarea|js},
        |],
        [|
          CSS.unsafe({js|fontFamily|js}, {js|inherit|js}),
          CSS.fontSize(`percent(100.)),
          CSS.lineHeight(`abs(1.15)),
          CSS.margin(`zero),
        |],
      ),
      CSS.selectorMany(
        [|{js|button|js}, {js|input|js}|],
        [|CSS.overflow(`visible)|],
      ),
      CSS.selectorMany(
        [|{js|button|js}, {js|select|js}|],
        [|CSS.textTransform(`none)|],
      ),
      CSS.selectorMany(
        [|
          {js|button|js},
          {js|[type="button"]|js},
          {js|[type="reset"]|js},
          {js|[type="submit"]|js},
        |],
        [|CSS.unsafe({js|WebkitAppearance|js}, {js|button|js})|],
      ),
      CSS.selectorMany(
        [|
          {js|button::-moz-focus-inner|js},
          {js|[type="button"]::-moz-focus-inner|js},
          {js|[type="reset"]::-moz-focus-inner|js},
          {js|[type="submit"]::-moz-focus-inner|js},
        |],
        [|CSS.borderStyle(`none), CSS.padding(`zero)|],
      ),
      CSS.selectorMany(
        [|
          {js|button:-moz-focusring|js},
          {js|[type="button"]:-moz-focusring|js},
          {js|[type="reset"]:-moz-focusring|js},
          {js|[type="submit"]:-moz-focusring|js},
        |],
        [|CSS.unsafe({js|outline|js}, {js|1px dotted ButtonText|js})|],
      ),
      CSS.selectorMany(
        [|{js|fieldset|js}|],
        [|CSS.padding3(~top=`em(0.35), ~h=`em(0.75), ~bottom=`em(0.625))|],
      ),
      CSS.selectorMany(
        [|{js|legend|js}|],
        [|
          CSS.boxSizing(`borderBox),
          CSS.unsafe({js|color|js}, {js|inherit|js}),
          CSS.display(`table),
          CSS.maxWidth(`percent(100.)),
          CSS.padding(`zero),
          CSS.whiteSpace(`normal),
        |],
      ),
      CSS.selectorMany(
        [|{js|progress|js}|],
        [|CSS.verticalAlign(`baseline)|],
      ),
      CSS.selectorMany([|{js|textarea|js}|], [|CSS.overflow(`auto)|]),
      CSS.selectorMany(
        [|{js|[type="checkbox"]|js}, {js|[type="radio"]|js}|],
        [|CSS.boxSizing(`borderBox), CSS.padding(`zero)|],
      ),
      CSS.selectorMany(
        [|
          {js|[type="number"]::-webkit-inner-spin-button|js},
          {js|[type="number"]::-webkit-outer-spin-button|js},
        |],
        [|CSS.height(`auto)|],
      ),
      CSS.selectorMany(
        [|{js|[type="search"]|js}|],
        [|
          CSS.unsafe({js|WebkitAppearance|js}, {js|textfield|js}),
          CSS.outlineOffset(`pxFloat(-2.)),
        |],
      ),
      CSS.selectorMany(
        [|{js|[type="search"]::-webkit-search-decoration|js}|],
        [|CSS.unsafe({js|WebkitAppearance|js}, {js|none|js})|],
      ),
      CSS.selectorMany(
        [|{js|::-webkit-file-upload-button|js}|],
        [|
          CSS.unsafe({js|WebkitAppearance|js}, {js|button|js}),
          CSS.unsafe({js|font|js}, {js|inherit|js}),
        |],
      ),
      CSS.selectorMany([|{js|details|js}|], [|CSS.display(`block)|]),
      CSS.selectorMany([|{js|summary|js}|], [|CSS.display(`listItem)|]),
      CSS.selectorMany([|{js|template|js}|], [|CSS.display(`none)|]),
      CSS.selectorMany([|{js|[hidden]|js}|], [|CSS.display(`none)|]),
      CSS.selectorMany(
        [|{js|:root|js}|],
        [|CSS.unsafe({js|--shiki-color-text|js}, {js|oklch(37.53% 0 0)|js})|],
      ),
    |]),
  );
