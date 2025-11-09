static const char norm_fg[] = "#ffffff";
static const char norm_bg[] = "#272725";
static const char norm_border[] = "#4f4f4b";

static const char sel_fg[] = "#ffffff";
static const char sel_bg[] = "#959c4f";
static const char sel_border[] = "#ffffff";

static const char urg_fg[] = "#ffffff";
static const char urg_bg[] = "#7d5151";
static const char urg_border[] = "#7d5151";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
