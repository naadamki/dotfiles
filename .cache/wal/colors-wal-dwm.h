static const char norm_fg[] = "#f6f7f8";
static const char norm_bg[] = "#272a2a";
static const char norm_border[] = "#484c4e";

static const char sel_fg[] = "#f6f7f8";
static const char sel_bg[] = "#b05f5f";
static const char sel_border[] = "#f6f7f8";

static const char urg_fg[] = "#f6f7f8";
static const char urg_bg[] = "#b05f5f";
static const char urg_border[] = "#b05f5f";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
