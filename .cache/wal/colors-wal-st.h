const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#272a2a", /* black   */
  [1] = "#b05f5f", /* red     */
  [2] = "#b05f5f", /* green   */
  [3] = "#88aa55", /* yellow  */
  [4] = "#88aa55", /* blue    */
  [5] = "#ccb05f", /* magenta */
  [6] = "#ccb05f", /* cyan    */
  [7] = "#556973", /* white   */

  /* 8 bright colors */
  [8]  = "#484c4e",  /* black   */
  [9]  = "#b05f5f",  /* red     */
  [10] = "#b05f5f", /* green   */
  [11] = "#88aa55", /* yellow  */
  [12] = "#88aa55", /* blue    */
  [13] = "#ccb05f", /* magenta */
  [14] = "#ccb05f", /* cyan    */
  [15] = "#f6f7f8", /* white   */

  /* special colors */
  [256] = "#272a2a", /* background */
  [257] = "#80807e", /* foreground */
  [258] = "#eaeaed",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
