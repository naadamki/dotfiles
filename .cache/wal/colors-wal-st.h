const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#272725", /* black   */
  [1] = "#7d5151", /* red     */
  [2] = "#959c4f", /* green   */
  [3] = "#a78749", /* yellow  */
  [4] = "#455563", /* blue    */
  [5] = "#9f908d", /* magenta */
  [6] = "#4a5e5b", /* cyan    */
  [7] = "#f2f2f2", /* white   */

  /* 8 bright colors */
  [8]  = "#4f4f4b",  /* black   */
  [9]  = "#7d5151",  /* red     */
  [10] = "#959c4f", /* green   */
  [11] = "#a78749", /* yellow  */
  [12] = "#455563", /* blue    */
  [13] = "#9f908d", /* magenta */
  [14] = "#4a5e5b", /* cyan    */
  [15] = "#ffffff", /* white   */

  /* special colors */
  [256] = "#272725", /* background */
  [257] = "#bc9f67", /* foreground */
  [258] = "#282826",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
