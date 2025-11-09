const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#272c30", /* black   */
  [1] = "#934e46", /* red     */
  [2] = "#637268", /* green   */
  [3] = "#c79e84", /* yellow  */
  [4] = "#515e67", /* blue    */
  [5] = "#715f5e", /* magenta */
  [6] = "#5c6f7d", /* cyan    */
  [7] = "#cfb9a8", /* white   */

  /* 8 bright colors */
  [8]  = "#414a51",  /* black   */
  [9]  = "#934e46",  /* red     */
  [10] = "#637268", /* green   */
  [11] = "#c79e84", /* yellow  */
  [12] = "#515e67", /* blue    */
  [13] = "#715f5e", /* magenta */
  [14] = "#5c6f7d", /* cyan    */
  [15] = "#ddcec2", /* white   */

  /* special colors */
  [256] = "#272c30", /* background */
  [257] = "#c79e84", /* foreground */
  [258] = "#cfb9a8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
