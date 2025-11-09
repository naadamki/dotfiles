static const char norm_fg[] = "#ddcec2";
static const char norm_bg[] = "#272c30";
static const char norm_border[] = "#414a51";

static const char sel_fg[] = "#ddcec2";
static const char sel_bg[] = "#637268";
static const char sel_border[] = "#ddcec2";

static const char urg_fg[] = "#ddcec2";
static const char urg_bg[] = "#934e46";
static const char urg_border[] = "#934e46";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
