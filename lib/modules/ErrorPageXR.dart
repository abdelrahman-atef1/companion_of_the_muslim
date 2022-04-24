import 'package:companion_of_the_muslim/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPageXR extends StatelessWidget {
  VoidCallback onTap;
  ErrorPageXR({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: -0.4),
            child:
                // Adobe XD layer: 'Background' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle' (shape)
                      Container(
                    color: const Color(0xfff0f7fe),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 286.0, start: 26.5),
            Pin(size: 235.0, start: 122.5),
            child:
                // Adobe XD layer: 'Title' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(size: 235.0, middle: 0.5),
                  child:
                      // Adobe XD layer: '404' (text)
                      const Text(
                    '404',
                    style: TextStyle(
                      fontFamily: 'Metropolis-Black',
                      fontSize: 160,
                      color: Color(0xfff0f7fe),
                      shadows: [
                        Shadow(
                          color: Color(0x2c1a62bb),
                          offset: Offset(0, 18),
                          blurRadius: 31,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.0),
                  Pin(size: 26.0, middle: 0.0423),
                  child:
                      // Adobe XD layer: 'Cant find this page!' (text)
                      Text(
                    'Something Wrong happend!',
                    style: GoogleFonts.tajawal(
                        fontSize: 20, color: AppColors.mainGreen),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: -44.2, end: -68.4),
            Pin(size: 642.0, end: -75.5),
            child:
                // Adobe XD layer: 'Illustration' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 47.5, end: 29.8),
                  Pin(size: 331.6, start: 62.1),
                  child:
                      // Adobe XD layer: 'Path 3 Copy 2' (shape)
                      SvgPicture.string(
                    _svg_wg78m,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 352.2, start: 0.0),
                  Pin(size: 410.7, start: 73.5),
                  child:
                      // Adobe XD layer: 'analyze_market' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 6.2),
                        Pin(size: 149.3, end: 0.0),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_brk8,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 82.1, middle: 0.5065),
                        Pin(size: 101.6, middle: 0.7086),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_tik6pb,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 73.3, middle: 0.5158),
                        Pin(size: 48.6, middle: 0.661),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_ca1o2,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 144.8, middle: 0.5319),
                        Pin(size: 176.6, middle: 0.3774),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_mwoegr,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 110.3, middle: 0.5219),
                        Pin(size: 64.5, middle: 0.4796),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_p3dtw,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 234.8, end: 48.5),
                        Pin(size: 202.3, start: 0.0),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_be0i,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 33.5, middle: 0.2161),
                        Pin(size: 93.6, middle: 0.1978),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_r4c,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 135.9, middle: 0.6408),
                        Pin(size: 70.7, middle: 0.1974),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_j283by,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 163.3, start: 0.0),
                        Pin(size: 267.6, end: 21.2),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_wwbdsp,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.1, middle: 0.2376),
                        Pin(size: 14.1, middle: 0.4232),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.48),
                            color: const Color(0xff9c62ed),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.1, middle: 0.2402),
                        Pin(size: 14.1, middle: 0.4232),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.48),
                            gradient: const LinearGradient(
                              begin: Alignment(-1.0, 0.0),
                              end: Alignment(1.0, 0.0),
                              colors: [Color(0x00000000), Color(0xff000000)],
                              stops: [0.0, 0.99],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 151.8, end: 0.0),
                        Pin(size: 244.6, end: 44.2),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_v3l20,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.1, middle: 0.7833),
                        Pin(size: 14.1, middle: 0.4232),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.48),
                            color: const Color(0xff9c62ed),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 14.1, middle: 0.7728),
                        Pin(size: 14.1, middle: 0.4232),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.48),
                            gradient: const LinearGradient(
                              begin: Alignment(1.52, -0.04),
                              end: Alignment(-1.26, 0.04),
                              colors: [Color(0x00000000), Color(0xff000000)],
                              stops: [0.0, 0.99],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 37.1, middle: 0.5126),
                        Pin(size: 37.1, middle: 0.4019),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_elz5o,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 37.1, middle: 0.5126),
                        Pin(size: 37.1, middle: 0.4019),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_nt4fp3,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 35.3, middle: 0.5125),
                        Pin(size: 10.6, middle: 0.4062),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          color: const Color(0xff9c62ed),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 35.3, middle: 0.5125),
                        Pin(size: 10.6, middle: 0.4062),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(-0.01, -0.95),
                              end: Alignment(0.01, 0.72),
                              colors: [
                                Color(0x00ffffff),
                                Color(0x44ffffff),
                                Color(0x77ffffff),
                                Color(0xb0ffffff)
                              ],
                              stops: [0.02, 0.58, 0.68, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 79.4, middle: 0.3236),
                        Pin(size: 78.6, middle: 0.4016),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: Color(0xff9c62ed),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 79.4, middle: 0.3236),
                        Pin(size: 78.6, middle: 0.4016),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            gradient: LinearGradient(
                              begin: Alignment(-0.09, -0.11),
                              end: Alignment(-0.5, -0.58),
                              colors: [
                                Color(0x00ffffff),
                                Color(0x44ffffff),
                                Color(0x77ffffff),
                                Color(0xb0ffffff)
                              ],
                              stops: [0.02, 0.58, 0.68, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.8, middle: 0.3302),
                        Pin(size: 68.0, middle: 0.4072),
                        child:
                            // Adobe XD layer: 'Oval' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Mask' (shape)
                                  Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Oval' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 61.8, end: -3.5),
                                    Pin(size: 61.8, start: -18.5),
                                    child:
                                        // Adobe XD layer: 'Oval' (shape)
                                        Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        gradient: LinearGradient(
                                          begin: Alignment(-0.37, 1.63),
                                          end: Alignment(-0.1, -0.73),
                                          colors: [
                                            Color(0x320b85d1),
                                            Color(0x322af598)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0b000000),
                                            offset: Offset(34, 18),
                                            blurRadius: 42,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Mask' (shape)
                                        Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 79.4, middle: 0.6958),
                        Pin(size: 78.6, middle: 0.4016),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: Color(0xff9c62ed),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 79.4, middle: 0.6958),
                        Pin(size: 78.6, middle: 0.4016),
                        child:
                            // Adobe XD layer: 'Oval' (shape)
                            Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            gradient: LinearGradient(
                              begin: Alignment(-0.03, -0.02),
                              end: Alignment(-0.68, -0.41),
                              colors: [
                                Color(0x00ffffff),
                                Color(0x44ffffff),
                                Color(0x77ffffff),
                                Color(0xb0ffffff)
                              ],
                              stops: [0.02, 0.58, 0.68, 1.0],
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 68.8, middle: 0.6885),
                        Pin(size: 68.0, middle: 0.4072),
                        child:
                            // Adobe XD layer: 'Oval' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Mask' (shape)
                                  Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Oval' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(size: 61.8, end: -5.3),
                                    Pin(size: 61.8, start: -18.5),
                                    child:
                                        // Adobe XD layer: 'Oval' (shape)
                                        Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        gradient: LinearGradient(
                                          begin: Alignment(-0.37, 1.63),
                                          end: Alignment(-0.1, -0.73),
                                          colors: [
                                            Color(0x320b85d1),
                                            Color(0x322af598)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0b000000),
                                            offset: Offset(34, 18),
                                            blurRadius: 42,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child:
                                        // Adobe XD layer: 'Mask' (shape)
                                        Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 9.7, middle: 0.5052),
                        Pin(size: 10.6, middle: 0.3775),
                        child:
                            // Adobe XD layer: 'Rectangle' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.62),
                            color: const Color(0xff9c62ed),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 139.5, middle: 0.527),
                        Pin(size: 48.6, start: 0.0),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_qbe1y,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 36.2, end: 51.2),
                        Pin(size: 25.6, start: 45.0),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_ed8ji7,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 112.1, middle: 0.5441),
                        Pin(size: 47.7, start: 47.7),
                        child:
                            // Adobe XD layer: 'Path' (shape)
                            SvgPicture.string(
                          _svg_io1s80,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 128.1, end: 61.8),
                  Pin(size: 175.7, middle: 0.4819),
                  child:
                      // Adobe XD layer: 'Path 4' (shape)
                      SvgPicture.string(
                    _svg_a20hkb,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 77.3, end: 0.0),
                  Pin(size: 331.6, end: 0.0),
                  child:
                      // Adobe XD layer: 'Path 3 Copy' (shape)
                      SvgPicture.string(
                    _svg_flbod,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 263.9, start: 28.7),
                  Pin(size: 195.7, end: 69.6),
                  child:
                      // Adobe XD layer: 'Path 3' (shape)
                      SvgPicture.string(
                    _svg_tm6qt,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 155.9, middle: 0.5982),
                  Pin(size: 160.6, end: 4.4),
                  child:
                      // Adobe XD layer: 'Path 5' (shape)
                      SvgPicture.string(
                    _svg_ktb8w,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 95.4, start: 0.1),
                  Pin(size: 133.2, start: 0.0),
                  child:
                      // Adobe XD layer: 'Path 5 Copy' (shape)
                      SvgPicture.string(
                    _svg_kq6gje,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.8, end: 39.7),
            Pin(size: 26.0, end: 70.7),
            child:
                // Adobe XD layer: 'CTA' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                    Pin(size: 50, end: 0.0), Pin(size: 50, start: 2.2),
                    child: InkWell(
                      onTap: onTap,
                      child: const Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                    // Adobe XD layer: 'arrow-right' (group)

                    ),
                Pinned.fromPins(
                  Pin(startFraction: 0.0, endFraction: 0.6191),
                  Pin(size: 26.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Let’s go Home' (text)
                      const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Metropolis-Regular',
                        fontSize: 19.871999740600586,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: 'Try again',
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          // Pinned.fromPins(
          //   Pin(start: -164.5, end: -170.0),
          //   Pin(size: 289.2, start: -71.8),
          //   child:
          //       // Adobe XD layer: 'Clouds' (group)
          //   //     Stack(
          //   //   children: <Widget>[
          //   //     Pinned.fromPins(
          //   //       Pin(size: 320.2, start: 0.0),
          //   //       Pin(size: 208.7, start: 0.0),
          //   //       child:
          //   //           // Adobe XD layer: 'Combined Shape' (shape)
          //   //           SvgPicture.string(
          //   //         _svg_eyd4nv,
          //   //         allowDrawingOutsideViewBox: true,
          //   //         fit: BoxFit.fill,
          //   //       ),
          //   //     ),
          //   //     Pinned.fromPins(
          //   //       Pin(size: 246.2, end: 0.0),
          //   //       Pin(size: 160.1, end: 0.0),
          //   //       child:
          //   //           // Adobe XD layer: 'Combined Shape Copy' (shape)
          //   //           SvgPicture.string(
          //   //         _svg_pm98k6,
          //   //         allowDrawingOutsideViewBox: true,
          //   //         fit: BoxFit.fill,
          //   //       ),
          //   //     ),
          //   //   ],
          //   // ),
          // ),
          Pinned.fromPins(
            Pin(size: 274.1, start: 55.2),
            Pin(size: 85.0, start: 45.3),
            child:
                // Adobe XD layer: 'Birds' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 17.4, middle: 0.5764),
                  Pin(size: 26.0, middle: 0.6354),
                  child:
                      // Adobe XD layer: 'Fill 42' (shape)
                      SvgPicture.string(
                    _svg_pf3o,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.9, start: 0.0),
                  Pin(size: 42.4, start: 0.0),
                  child:
                      // Adobe XD layer: 'Fill 31' (shape)
                      SvgPicture.string(
                    _svg_yzrthr,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.0, end: 0.0),
                  Pin(size: 21.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Fill 31 Copy' (shape)
                      SvgPicture.string(
                    _svg_uaps5m,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_brk8 =
    '<svg viewBox="0.0 261.4 346.0 149.3" ><path transform="translate(0.0, 261.43)" d="M 146.9583435058594 0 C 146.9583435058594 0 37.51624298095703 13.17684459686279 26.20899391174316 40.84821701049805 C 14.90174674987793 68.51959228515625 0 92.97235870361328 0 92.97235870361328 C 0 92.97235870361328 91.40503692626953 168.4259948730469 163.8474731445312 144.6140594482422 C 236.2899017333984 120.8021392822266 242.3811798095703 105.205940246582 278.9718933105469 107.9421157836914 C 315.5626220703125 110.6782913208008 345.9974670410156 69.89487457275391 345.9974670410156 52.90898895263672 C 345.9974670410156 35.92309951782227 232.8388977050781 1.065668225288391 214.6081237792969 2.17453932762146 C 196.3773345947266 3.283410310745239 146.9583435058594 0 146.9583435058594 0 Z" fill="#883fef" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_tik6pb =
    '<svg viewBox="136.8 219.0 82.1 101.6" ><defs><linearGradient id="gradient" x1="-0.021768" y1="0.56032" x2="0.98001" y2="0.469632"><stop offset="0.0" stop-color="#ffecc4d7"  /><stop offset="0.42" stop-color="#ffefd4d1"  /><stop offset="1.0" stop-color="#fff2eac9"  /></linearGradient></defs><path transform="translate(136.81, 219.03)" d="M 11.95169353485107 41.03139877319336 C 11.95169353485107 44.91428375244141 10.90869617462158 38.52190017700195 9.365631103515625 42.08121490478516 C 7.308211326599121 46.81258773803711 3.864890098571777 60.48897933959961 1.58601176738739 65.09091949462891 C -2.335945129394531 73.00050354003906 1.457423090934753 83.10320281982422 8.12975025177002 88.89877319335938 C 14.802077293396 94.69434356689453 23.63898277282715 97.15350341796875 32.23299789428711 99.10214233398438 C 44.94185256958008 101.9783554077148 59.46523666381836 103.7975540161133 69.93093109130859 95.99582672119141 C 79.93228149414062 88.54644012451172 82.78981018066406 74.61837768554688 81.94683837890625 62.13561248779297 C 81.42538452148438 55.94607925415039 80.54519653320312 49.79248809814453 79.31076812744141 43.70627593994141 L 71.92405700683594 3.18762469291687 C 71.84021759033203 2.48642110824585 71.59565734863281 1.814414739608765 71.20967864990234 1.22460925579071 C 70.40242767333984 0.1676009595394135 68.89508056640625 0.04536190256476402 67.57347106933594 0.02379030548036098 C 53.75017929077148 -0.1344014108181 31.42574501037598 0.2826494872570038 19.33840370178223 8.055615425109863 C 8.05831241607666 15.31805324554443 11.9088306427002 27.85115051269531 11.95169353485107 41.03139877319336 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ca1o2 =
    '<svg viewBox="143.9 239.3 73.3 48.6" ><defs><linearGradient id="gradient" x1="0.389806" y1="0.022873" x2="1.764516" y2="2.962311"><stop offset="0.0" stop-color="#ffecc4d7"  /><stop offset="0.42" stop-color="#ffefd4d1"  /><stop offset="1.0" stop-color="#fff2eac9"  /></linearGradient></defs><path transform="translate(143.87, 239.35)" d="M 4.682459831237793 31.08268928527832 C 8.804744720458984 39.71288681030273 17.58355140686035 45.9112548828125 27.19981002807617 47.85392379760742 C 36.81607055664062 49.79659271240234 47.08207702636719 47.71416473388672 55.5360107421875 42.8714714050293 C 62.45220565795898 38.90926742553711 68.4010009765625 32.90656280517578 70.84116363525391 25.49227714538574 C 72.20563507080078 21.29946899414062 72.42943572998047 16.89702033996582 72.64601898193359 12.52951049804688 L 73.25966644287109 0 C 69.33953094482422 5.49956750869751 62.22118759155273 8.001276969909668 55.3843994140625 8.930683135986328 C 38.16609954833984 11.27865600585938 23.17859840393066 5.227035045623779 7.072085857391357 0.642897367477417 C -0.4938594996929169 -1.509411215782166 -0.3494712114334106 2.962918281555176 0.2569595277309418 9.161287307739258 C 0.9716814756393433 16.49171447753906 1.448162794113159 24.31130218505859 4.682459831237793 31.08268928527832 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_mwoegr =
    '<svg viewBox="110.3 88.3 144.8 176.6" ><defs><linearGradient id="gradient" x1="0.457586" y1="0.127903" x2="0.596492" y2="0.884377"><stop offset="0.0" stop-color="#ffecc4d7"  /><stop offset="0.42" stop-color="#ffefd4d1"  /><stop offset="1.0" stop-color="#fff2eac9"  /></linearGradient></defs><path transform="translate(110.33, 88.32)" d="M 11.01852130889893 127.9354476928711 C 11.01852130889893 127.9354476928711 39.09484100341797 173.8604736328125 58.70989990234375 176.0149993896484 C 78.32495880126953 178.1695251464844 107.8561248779297 177.3678436279297 128.7378387451172 129.0592346191406 C 149.6195526123047 80.75062561035156 153.3471374511719 16.47991561889648 120.0522003173828 5.034446716308594 C 120.059440612793 5.034446716308594 -43.15813064575195 -38.06321716308594 11.01852130889893 127.9354476928711 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p3dtw =
    '<svg viewBox="126.2 166.0 110.3 64.5" ><defs><linearGradient id="gradient" x1="0.493817" y1="1.13167" x2="0.561054" y2="-3.534988"><stop offset="0.0" stop-color="#00000000" stop-opacity="0.0" /><stop offset="0.99" stop-color="#ff000000"  /></linearGradient></defs><path transform="translate(126.22, 166.04)" d="M 108.8553466796875 51.51574325561523 C 108.2693176269531 54.63875198364258 107.5332107543945 58.05226898193359 105.1390609741211 60.07133102416992 C 101.8444366455078 62.88929748535156 96.77742767333984 61.97418594360352 92.98967742919922 59.92607498168945 C 85.23550415039062 55.76448440551758 80.08988189697266 48.05138778686523 74.08665466308594 41.55117416381836 C 71.49623107910156 38.68711471557617 68.53411102294922 36.19486618041992 65.28191375732422 34.14311218261719 L 68.76950836181641 41.19529724121094 C 69.46218872070312 42.47057723999023 70.01348114013672 43.82003402709961 70.41324615478516 45.21889114379883 C 70.79550170898438 46.78327178955078 70.79550170898438 48.41891479492188 70.41324615478516 49.98329162597656 C 70.35569000244141 50.33604431152344 70.21602630615234 50.66971588134766 70.00588226318359 50.95650863647461 C 69.68218231201172 51.28948593139648 69.26986694335938 51.51918792724609 68.81953430175781 51.61742401123047 C 66.92524719238281 52.10605621337891 64.9779052734375 52.35007476806641 63.0235595703125 52.34370422363281 C 59.58599472045898 52.48169708251953 56.05552673339844 52.60516738891602 52.83236312866211 51.39227676391602 C 51.86756134033203 51.02913665771484 50.80984878540039 50.36822128295898 50.72408676147461 49.3223762512207 C 50.60259246826172 47.86981582641602 52.40356063842773 47.05638122558594 53.84719467163086 46.86028671264648 C 55.79109954833984 46.86028671264648 57.64209365844727 46.61334991455078 59.56455612182617 46.80218505859375 C 62.20883560180664 47.05638122558594 62.10877990722656 47.27426528930664 62.12307357788086 44.4708251953125 C 62.12307357788086 40.46175384521484 62.06590270996094 36.48173904418945 62.03016662597656 32.42909240722656 C 58.62686920166016 30.80517387390137 54.81414794921875 30.28534126281738 51.11000823974609 30.94021606445312 C 43.88469696044922 32.37825393676758 38.63901901245117 38.64605331420898 34.59398651123047 44.87754058837891 C 30.54895210266113 51.10902786254883 26.78978729248047 57.95059204101562 20.54357147216797 61.93787002563477 C 13.6041259765625 66.34639739990234 1.311801314353943 65.45307159423828 0.1611826121807098 55.69911956787109 C -1.060903191566467 45.32057189941406 4.885151386260986 32.5162467956543 10.59536552429199 24.32380104064941 C 18.26794624328613 13.38970756530762 29.34792900085449 5.407912731170654 42.04084777832031 1.671110272407532 C 46.5361213684082 0.3565424680709839 51.27438354492188 -0.3987893164157867 55.91259384155273 0.2185491621494293 C 61.04392242431641 0.9012528657913208 65.81791687011719 3.218087911605835 70.48471069335938 5.498608589172363 L 94.94786834716797 17.43866157531738 C 99.13583374023438 19.48677253723145 103.4810333251953 21.65108871459961 106.3825912475586 25.3405933380127 C 111.9069900512695 32.42182922363281 110.5205307006836 42.61880874633789 108.8553466796875 51.51574325561523 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_be0i =
    '<svg viewBox="68.8 0.0 234.8 202.3" ><path transform="translate(68.85, 0.0)" d="M 216.0911865234375 87.49459075927734 C 216.2138977050781 88.66040802001953 217.3688507080078 89.38993835449219 218.2567138671875 90.20529937744141 C 221.9308929443359 93.69561004638672 220.3789215087891 100.0968933105469 216.8996429443359 103.7946166992188 C 213.4203643798828 107.4923400878906 208.5551452636719 109.580810546875 204.6788482666016 112.8637008666992 C 202.3190612792969 114.7228393554688 200.7397003173828 117.383659362793 200.2467346191406 120.3306732177734 C 199.5682067871094 124.3860092163086 200.7592468261719 128.7345886230469 200.9252777099609 133.2977447509766 C 200.9750671386719 134.5781707763672 200.9171142578125 135.8604736328125 200.7520294189453 137.1313629150391 C 199.2905120849609 148.0269775390625 195.1728515625 158.4059906005859 188.7550048828125 167.3711700439453 C 186.8565673828125 169.9531402587891 184.3373260498047 172.5708770751953 181.117919921875 172.7139129638672 C 175.920654296875 172.9427947998047 172.9538726806641 166.9920959472656 171.5534973144531 162.0284271240234 C 168.6933898925781 151.9153747558594 166.6038055419922 141.6038055419922 165.3023529052734 131.1806640625 C 164.7970581054688 127.2469177246094 164.40966796875 123.3036346435547 164.1401824951172 119.3508071899414 C 163.1151580810547 124.1213760375977 156.1421661376953 125.2728958129883 152.0348815917969 122.5907897949219 C 151.8038940429688 122.4405899047852 151.5801239013672 122.2832412719727 151.3563537597656 122.1115875244141 C 147.6966094970703 119.3579635620117 145.8053741455078 114.8234252929688 143.7842254638672 110.6679534912109 C 141.6186981201172 106.2693023681641 138.6374816894531 101.6703948974609 133.8661041259766 100.4473571777344 C 128.4522857666016 99.06696319580078 122.9590682983398 100.4473571777344 117.4514083862305 100.2256317138672 C 108.955322265625 99.86801910400391 100.4375762939453 98.93822479248047 91.96315002441406 98.30167388916016 C 87.36501312255859 97.95836639404297 82.57919311523438 97.62935638427734 78.30588531494141 99.27438354492188 C 76.80377960205078 99.85343933105469 75.42510986328125 100.7075119018555 74.24191284179688 101.7919845581055 C 71.98976898193359 103.8589859008789 70.56051635742188 106.691291809082 70.95030975341797 109.6594848632812 C 62.34595108032227 109.3662414550781 62.04277801513672 116.2109603881836 55.66890716552734 121.9470825195312 C 49.29503631591797 127.6832046508789 37.9332389831543 132.9973449707031 42.89229583740234 139.9708099365234 C 48.04624938964844 147.2375183105469 44.14108276367188 152.0223846435547 43.66466522216797 160.6051177978516 C 42.87063980102539 174.8596038818359 38.45296478271484 188.6420288085938 34.07138061523438 202.2528076171875 C 27.43042945861816 192.833251953125 20.6667652130127 183.1562347412109 17.67833709716797 172.0630645751953 C 16.16968536376953 166.4842834472656 15.20963573455811 160.9984893798828 14.17740058898926 155.6128387451172 C 12.55325508117676 147.0301055908203 10.76308536529541 138.5832672119141 6.439249038696289 130.1364440917969 C 4.735701084136963 126.8106307983398 2.635139226913452 123.6993942260742 1.429662346839905 120.1232528686523 C -0.374943882226944 114.8448791503906 -0.07898847013711929 109.1230621337891 0.2386222332715988 103.5657424926758 C 0.9604647159576416 91.70012664794922 1.913296818733215 78.99053955078125 9.384366989135742 69.68543243408203 C 12.13075923919678 66.37520599365234 15.62819290161133 63.75534057617188 19.59121894836426 62.03965377807617 C 25.05556678771973 59.47198486328125 30.90249061584473 57.91279220581055 35.91929626464844 54.11493301391602 C 38.60454940795898 52.0765380859375 40.45246887207031 49.10834503173828 41.93224334716797 45.83975601196289 C 44.65359115600586 39.80323791503906 46.17667770385742 32.55798721313477 49.46828079223633 27.42980575561523 C 55.39551544189453 18.39076995849609 63.82266616821289 11.23263072967529 73.74384307861328 6.809804916381836 C 90.21628570556641 -0.6500149965286255 109.114128112793 -1.114912748336792 127.0663452148438 1.309707641601562 C 141.9218597412109 3.326648473739624 156.8206939697266 7.367682456970215 169.1641998291016 15.79305934906006 C 174.3972778320312 19.53372764587402 179.2994537353516 23.70904350280762 183.8176116943359 28.27377510070801 C 194.8906707763672 38.96642303466797 205.2852020263672 50.50303649902344 219.9097290039062 54.52976608276367 C 224.8399200439453 55.88869857788086 230.6218719482422 56.67544937133789 233.4081878662109 60.92389678955078 C 236.2955474853516 65.32969665527344 234.2816162109375 71.43773651123047 230.6651763916016 75.27851104736328 C 227.0487518310547 79.11927795410156 222.1402282714844 81.46522521972656 217.9102325439453 84.63368225097656 C 217.0223541259766 85.34890747070312 215.9684753417969 86.31446838378906 216.0911865234375 87.49459075927734 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_r4c =
    '<svg viewBox="68.8 62.7 33.5 93.6" ><defs><linearGradient id="gradient" x1="1.983241" y1="0.133379" x2="-1.543444" y2="0.996102"><stop offset="0.0" stop-color="#00000000" stop-opacity="0.0" /><stop offset="0.99" stop-color="#ff000000"  /></linearGradient></defs><path transform="translate(68.85, 62.71)" d="M 25.87035179138184 57.41090393066406 C 23.27408599853516 62.02638626098633 21.33401870727539 67.57927703857422 23.15283012390137 72.55970764160156 C 25.62784385681152 71.12855529785156 28.14565086364746 69.76895141601562 30.59213447570801 68.37357330322266 L 14.00883674621582 93.61920166015625 C 12.40400218963623 85.03224945068359 10.63511657714844 76.58126068115234 6.362689018249512 68.13027954101562 C 4.679395198822021 64.80283355712891 2.603808641433716 61.6900634765625 1.412664175033569 58.1121711730957 C -0.3704859614372253 52.83119583129883 -0.07804932445287704 47.10656356811523 0.2357850968837738 41.54651641845703 C 0.9490451812744141 29.6750602722168 1.890548467636108 16.9592227935791 9.27278995513916 7.649539470672607 C 11.98652935028076 4.337689399719238 15.44237899780273 1.716533780097961 19.3582878112793 0 C 20.45232772827148 0.5218586921691895 21.43561172485352 1.250785231590271 22.25412368774414 2.146737098693848 C 26.11285972595215 6.368653297424316 27.06149673461914 13.10940742492676 28.63066864013672 18.37606811523438 C 31.02009010314941 26.34046363830566 34.98581695556641 34.83438491821289 33.00295257568359 43.29253005981445 C 31.77614593505859 48.43754196166992 28.45948600769043 52.79541778564453 25.87035179138184 57.41090393066406 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_j283by =
    '<svg viewBox="138.6 67.1 135.9 70.7" ><defs><linearGradient id="gradient" x1="0.000002" y1="0.500132" x2="0.999878" y2="0.500132"><stop offset="0.0" stop-color="#00000000" stop-opacity="0.0" /><stop offset="0.99" stop-color="#ff000000"  /></linearGradient></defs><path transform="translate(138.58, 67.12)" d="M 132.0661315917969 37.93111801147461 C 128.6301574707031 42.54064559936523 128.8094940185547 48.4506721496582 129.5913696289062 54.37514495849609 C 129.9141693115234 56.81718444824219 130.3086853027344 59.25922393798828 130.6601715087891 61.60011291503906 C 130.9184112548828 63.55807876586914 131.0547027587891 65.69667053222656 130.2656555175781 67.45956420898438 C 130.1142883300781 67.78349304199219 129.9342346191406 68.09300994873047 129.7276611328125 68.38435363769531 C 127.2529067993164 71.78731536865234 122.0379867553711 70.72525024414062 118.0998916625977 69.32360076904297 C 108.4375915527344 65.86284637451172 101.3361129760742 66.77318572998047 94.86588287353516 65.32096862792969 C 90.38262939453125 64.30225372314453 86.20065307617188 62.16365814208984 81.68153381347656 56.65100860595703 C 81.49345397949219 56.44325637817383 81.26359558105469 56.27823638916016 81.00725555419922 56.16693496704102 C 77.37043762207031 53.38532257080078 75.49105834960938 48.80469512939453 73.48255920410156 44.60698699951172 C 71.33059692382812 40.16363143920898 68.36806488037109 35.51797866821289 63.62657928466797 34.28250885009766 C 58.24667358398438 32.88808822631836 52.78786468505859 34.28250885009766 47.3147087097168 34.05853271484375 C 38.87184906005859 33.69728469848633 30.40746688842773 32.75804138183594 21.98612403869629 32.11501693725586 C 17.41679191589355 31.76821899414062 12.66095733642578 31.43587112426758 8.414420127868652 33.09761428833008 C 6.921719074249268 33.68255615234375 5.551689624786377 34.54531097412109 4.375905990600586 35.64080047607422 C 2.539565801620483 35.22175216674805 1.162310361862183 33.89958572387695 0.4880291223526001 30.96624755859375 C -1.183327555656433 23.58233070373535 1.556836605072021 13.3228759765625 6.893701076507568 8.063098907470703 C 12.23056507110596 2.803322076797485 20.04218482971191 1.408903360366821 27.46645164489746 0.6719565987586975 C 43.24750137329102 -0.9175363779067993 60.16191864013672 -0.2022645324468613 73.42517852783203 8.532721519470215 C 79.508056640625 12.53535461425781 84.60102844238281 18.06967926025391 91.05691528320312 21.42206573486328 C 102.8281402587891 27.52716255187988 116.9234924316406 25.38857269287109 130.0648040771484 26.99251556396484 C 132.2813262939453 27.25984001159668 134.8636779785156 27.92453575134277 135.6885986328125 30.01977729797363 C 136.7789154052734 32.85918807983398 133.8881225585938 35.48907852172852 132.0661315917969 37.93111801147461 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wwbdsp =
    '<svg viewBox="0.0 121.9 163.3 267.6" ><defs><linearGradient id="gradient" x1="-0.000013" y1="0.50004" x2="0.999989" y2="0.50004"><stop offset="0.0" stop-color="#ffecc4d7"  /><stop offset="0.42" stop-color="#ffefd4d1"  /><stop offset="1.0" stop-color="#fff2eac9"  /></linearGradient></defs><path transform="translate(0.0, 121.88)" d="M 162.3275146484375 19.86482048034668 C 160.7938079833984 16.39694023132324 158.0273895263672 13.59817314147949 155.16064453125 11.19511985778809 C 143.4714813232422 1.626072645187378 127.2098617553711 -2.554089784622192 112.7041168212891 1.604488372802734 C 109.8890838623047 2.365837097167969 107.2046966552734 3.549529075622559 104.7417297363281 5.115537166595459 C 100.7426147460938 7.748823642730713 97.71102905273438 11.5908317565918 95.03778839111328 15.59832000732422 C 79.13450622558594 39.29070281982422 73.82386016845703 68.43672943115234 71.55196380615234 96.848876953125 C 71.04311370849609 103.281005859375 71.73830413818359 110.1304321289062 69.12239074707031 116.015754699707 C 47.18461227416992 165.3503112792969 -0.5682321190834045 227.34765625 0.005117313470691442 232.9811553955078 C 17.14109992980957 247.3707122802734 46.92660140991211 267.1131591796875 60.42181777954102 267.6095886230469 C 67.99002838134766 253.6445465087891 97.20218658447266 153.2774810791016 103.3370208740234 138.6217193603516 C 105.7522583007812 132.8659057617188 110.0380477905273 120.2318878173828 113.5784759521484 115.0948257446289 C 123.0889129638672 101.2808609008789 137.9816589355469 101.2448883056641 149.2121429443359 88.81231689453125 C 152.0430603027344 85.68259429931641 154.5442962646484 82.09959411621094 155.4903259277344 77.98419189453125 C 156.2930145263672 74.48033142089844 155.9203338623047 70.83258819580078 155.7483367919922 67.24239349365234 C 155.3306121826172 58.55944061279297 156.094970703125 49.8598747253418 158.0202331542969 41.38438415527344 C 159.6471099853516 34.19680404663086 165.5884399414062 27.26104545593262 162.3275146484375 19.86482048034668 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_v3l20 =
    '<svg viewBox="200.4 121.9 151.8 244.6" ><defs><linearGradient id="gradient" x1="1.000018" y1="0.500068" x2="-0.000008" y2="0.500068"><stop offset="0.0" stop-color="#ffecc4d7"  /><stop offset="0.42" stop-color="#ffefd4d1"  /><stop offset="1.0" stop-color="#fff2eac9"  /></linearGradient></defs><path transform="translate(200.36, 121.88)" d="M 0.9697813987731934 19.82166290283203 C 2.520360946655273 16.3613166809082 5.317200660705566 13.56863021850586 8.251708030700684 11.17079734802246 C 20.06219673156738 1.622539877891541 36.50993347167969 -2.548541069030762 51.1679801940918 1.60100245475769 C 54.0162353515625 2.360745668411255 56.7325325012207 3.541839599609375 59.22519683837891 5.104423522949219 C 63.2682991027832 7.731988906860352 66.32598114013672 11.56564998626709 69.02862548828125 15.56443214416504 C 85.08509826660156 39.20534133911133 90.45415496826172 68.28804016113281 92.74379730224609 96.63847351074219 C 93.25824737548828 103.0566253662109 92.54816436767578 109.8911666870117 95.20008850097656 115.7637023925781 C 117.3646850585938 164.9767150878906 150.9557342529297 189.5796356201172 150.3760833740234 195.2008972167969 C 160.3244323730469 226.9685974121094 116.074951171875 246.2374114990234 98.06938934326172 244.5431365966797 C 90.41793060302734 230.6084136962891 66.81868743896484 152.9301147460938 60.60912704467773 138.2918395996094 C 58.1745719909668 132.5485382080078 53.83439636230469 119.9419631958008 50.25502395629883 114.8160552978516 C 40.6472282409668 101.0321044921875 25.61964797973633 100.996208190918 14.22941017150879 88.59065246582031 C 11.37460422515869 85.46772766113281 8.845855712890625 81.89251708984375 7.889423370361328 77.78604888916016 C 7.070659637451172 74.28980255126953 7.447435855865479 70.64997863769531 7.62133264541626 67.06758880615234 C 8.04249382019043 58.40389633178711 7.272218704223633 49.72370529174805 5.331691741943359 41.26575469970703 C 3.679672718048096 34.12251281738281 -2.31976580619812 27.20181846618652 0.9697813987731934 19.82166290283203 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_elz5o =
    '<svg viewBox="161.5 150.1 37.1 37.1" ><path transform="translate(161.52, 150.14)" d="M 0 0.8578449487686157 C 0 0.8578449487686157 15.80892753601074 11.6992301940918 37.07115936279297 0 L 37.07115936279297 37.09439849853516 C 37.07115936279297 37.09439849853516 18.26008796691895 23.11004829406738 1.907243251800537 37.09439849853516 L 0 0.8578449487686157 Z" fill="#9c62ed" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_nt4fp3 =
    '<svg viewBox="161.5 150.1 37.1 37.1" ><defs><linearGradient id="gradient" x1="0.495998" y1="-0.198764" x2="0.540206" y2="2.147727"><stop offset="0.0" stop-color="#00000000" stop-opacity="0.0" /><stop offset="0.99" stop-color="#ff000000"  /></linearGradient></defs><path transform="translate(161.52, 150.14)" d="M 0 0.8578449487686157 C 0 0.8578449487686157 15.80892753601074 11.6992301940918 37.07115936279297 0 L 37.07115936279297 37.09439849853516 C 37.07115936279297 37.09439849853516 18.26008796691895 23.11004829406738 1.907243251800537 37.09439849853516 L 0 0.8578449487686157 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qbe1y =
    '<svg viewBox="112.1 0.0 139.5 48.6" ><defs><linearGradient id="gradient" x1="0.501271" y1="1.120547" x2="0.488049" y2="-3.470829"><stop offset="0.02" stop-color="#00ffffff" stop-opacity="0.0" /><stop offset="0.58" stop-color="#63ffffff" stop-opacity="0.39" /><stop offset="0.68" stop-color="#adffffff" stop-opacity="0.68" /><stop offset="1.0" stop-color="#ffffffff"  /></linearGradient></defs><path transform="translate(112.1, 0.0)" d="M 139.4581604003906 27.97342491149902 C 138.3276214599609 29.33101654052734 137.0369873046875 30.54750061035156 135.6142730712891 31.59648895263672 C 125.5577392578125 38.89214706420898 111.5580215454102 34.61098861694336 100.0192489624023 30.00432205200195 C 87.33156585693359 24.93061828613281 74.40274810791016 19.70123672485352 60.76472473144531 18.84500503540039 C 47.12670516967773 17.98877334594727 32.39650726318359 22.29116058349609 24.13426208496094 33.16035079956055 C 19.44641494750977 39.32380294799805 15.66634941101074 48.14794158935547 7.928917407989502 48.57251739501953 C 4.951796054840088 48.64838027954102 2.077962636947632 47.48139572143555 0 45.35280609130859 C 2.673704624176025 39.38041305541992 4.170128345489502 32.21212768554688 7.404105186462402 27.1384220123291 C 13.22757434844971 18.19540786743164 21.50719451904297 11.11330795288086 31.25468635559082 6.737465381622314 C 47.43875503540039 -0.6431099772453308 66.00575256347656 -1.103069186210632 83.64369201660156 1.295794725418091 C 98.23914337158203 3.291309833526611 112.8771438598633 7.289416313171387 125.0045547485352 15.62529182434082 C 130.1656646728516 19.32365036010742 135.0010681152344 23.45467948913574 139.4581604003906 27.97342491149902 L 139.4581604003906 27.97342491149902 Z" fill="url(#gradient)" fill-opacity="0.69" stroke="none" stroke-width="1" stroke-opacity="0.69" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ed8ji7 =
    '<svg viewBox="264.8 45.0 36.2 25.6" ><defs><linearGradient id="gradient" x1="0.005593" y1="0.681892" x2="2.47019" y2="-0.2379"><stop offset="0.02" stop-color="#00ffffff" stop-opacity="0.0" /><stop offset="0.58" stop-color="#63ffffff" stop-opacity="0.39" /><stop offset="0.68" stop-color="#adffffff" stop-opacity="0.68" /><stop offset="1.0" stop-color="#ffffffff"  /></linearGradient></defs><path transform="translate(264.79, 45.04)" d="M 6.533471584320068 13.91242218017578 C 11.00247001647949 16.75461387634277 16.57411193847656 17.56863975524902 21.95589637756348 17.80319023132324 C 23.92732048034668 17.78105163574219 25.89272499084473 18.01314353942871 27.7977237701416 18.4930419921875 C 29.6671085357666 19.07941627502441 31.44886589050293 20.33494758605957 31.98193168640137 22.11476707458496 C 32.31783676147461 23.17713928222656 32.23020935058594 24.38438034057617 32.90932083129883 25.28808784484863 C 33.00952911376953 25.44509696960449 33.16850662231445 25.56081581115723 33.35476303100586 25.61231803894043 C 33.64433670043945 25.62175750732422 33.91923904418945 25.49190521240234 34.08499145507812 25.26739311218262 C 36.51498794555664 22.70112800598145 36.87701034545898 18.93345642089844 34.97586822509766 15.99577617645264 C 32.60992813110352 12.5465145111084 27.85614204406738 11.49793910980225 23.69384002685547 10.22861099243164 C 18.40597724914551 8.61723804473877 13.43664741516113 6.190703392028809 8.987039566040039 3.047247886657715 C 6.380123615264893 1.198443531990051 0.3995529413223267 -2.67162823677063 0.01983416639268398 2.860987663269043 C -0.2795594930648804 7.234651565551758 2.853120565414429 11.58072185516357 6.533471584320068 13.91242218017578 Z" fill="url(#gradient)" fill-opacity="0.69" stroke="none" stroke-width="1" stroke-opacity="0.69" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_io1s80 =
    '<svg viewBox="130.6 47.7 112.1 47.7" ><defs><linearGradient id="gradient" x1="-0.144119" y1="0.418362" x2="4.781347" y2="1.446674"><stop offset="0.02" stop-color="#00ffffff" stop-opacity="0.0" /><stop offset="0.58" stop-color="#63ffffff" stop-opacity="0.39" /><stop offset="0.68" stop-color="#adffffff" stop-opacity="0.68" /><stop offset="1.0" stop-color="#ffffffff"  /></linearGradient></defs><path transform="translate(130.63, 47.69)" d="M 3.696297407150269 19.46037483215332 C 5.607864856719971 15.11515045166016 7.743049621582031 10.64681053161621 11.36420726776123 7.56170129776001 C 15.69228458404541 3.889986276626587 21.52076148986816 2.673323392868042 27.10398101806641 1.768068075180054 C 33.50953674316406 0.6890039443969727 39.99443817138672 -0.1945250779390335 46.49376678466797 0.03722023963928223 C 59.13175201416016 0.4572586417198181 71.44512939453125 5.193553924560547 81.76038360595703 12.50801563262939 C 90.14964294433594 18.48270034790039 98.80579376220703 26.62275505065918 108.9984130859375 25.20331382751465 C 117.7483444213867 29.54853820800781 105.5143127441406 41.95415496826172 102.2971115112305 40.62886047363281 C 95.69679260253906 37.90585327148438 82.2220458984375 25.2829761505127 75.6866455078125 22.40064430236816 C 62.84668731689453 16.73736763000488 48.27549362182617 17.11395454406738 34.25252151489258 18.055419921875 C 30.92711639404297 18.27268028259277 27.50072288513184 18.54787826538086 24.54320335388184 20.09767532348633 C 21.58568382263184 21.6474723815918 19.3422966003418 24.37772178649902 17.40908813476562 27.15142250061035 C 14.61026573181152 31.17075538635254 12.11440753936768 35.60288619995117 10.97468090057373 40.41160202026367 C 10.09463787078857 44.09780120849609 11.63831901550293 49.01514434814453 6.812512874603271 47.36396026611328 C -4.101455211639404 43.6487922668457 0.6450030207633972 26.44170379638672 3.696297407150269 19.46037483215332 Z" fill="url(#gradient)" fill-opacity="0.69" stroke="none" stroke-width="1" stroke-opacity="0.69" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_wg78m =
    '<svg viewBox="47.5 67.0 449.3 331.6" ><defs><linearGradient id="gradient" x1="0.5" y1="1.306516" x2="0.5" y2="0.0"><stop offset="0.0" stop-color="#ff009efd"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="translate(47.47, 61.82)" d="M 0 27.5572395324707 C 0 27.5572395324707 107.3311004638672 -42.00083923339844 179.2906646728516 64.01477813720703 C 251.2502288818359 170.0303955078125 282.9804382324219 128.284912109375 337.9859313964844 83.58988952636719 C 392.9914245605469 38.89485931396484 481.6483154296875 90.25074005126953 437.3198852539062 175.7877807617188 C 392.9914245605469 261.3248291015625 322.2624816894531 336.7200012207031 322.2624816894531 336.7200012207031 L 0 336.7200012207031" fill="url(#gradient)" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_a20hkb =
    '<svg viewBox="336.7 229.6 128.1 175.7" ><defs><filter id="shadow"><feDropShadow dx="34" dy="18" stdDeviation="42"/></filter><linearGradient id="gradient" x1="0.314679" y1="1.316193" x2="0.450731" y2="0.136498"><stop offset="0.0" stop-color="#ff0b85d1"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="translate(336.72, 229.63)" d="M 106.211067199707 175.0404510498047 C 106.211067199707 175.0404510498047 19.4407787322998 186.4167022705078 4.337418079376221 116.8832550048828 C -10.76594161987305 47.34980392456055 16.99803352355957 75.02787780761719 35.20235443115234 56.34043121337891 C 53.40667343139648 37.65298080444336 40.15378952026367 0.01103353966027498 65.89532470703125 0.01103353966027498 C 91.63685607910156 0.01103353966027498 128.0639953613281 -1.862870097160339 128.0639953613281 43.2313232421875 C 128.0639953613281 88.32551574707031 106.211067199707 175.0404510498047 106.211067199707 175.0404510498047 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_flbod =
    '<svg viewBox="77.3 315.4 449.3 331.6" ><defs><filter id="shadow"><feDropShadow dx="34" dy="10" stdDeviation="46"/></filter><linearGradient id="gradient" x1="0.479286" y1="1.0" x2="0.549269" y2="0.136498"><stop offset="0.0" stop-color="#ff0b85d1"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="translate(526.61, 310.22)" d="M 0 27.5572395324707 C 0 27.5572395324707 -107.3311004638672 -42.00083923339844 -179.2906646728516 64.01477813720703 C -251.2502288818359 170.0303955078125 -282.9804382324219 128.284912109375 -337.9859313964844 83.58988952636719 C -392.9914245605469 38.89485931396484 -481.6483154296875 90.25074005126953 -437.3198852539062 175.7877807617188 C -392.9914245605469 261.3248291015625 -322.2624816894531 336.7200012207031 -322.2624816894531 336.7200012207031 L 0 336.7200012207031" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_tm6qt =
    '<svg viewBox="28.7 381.7 263.9 195.7" ><defs><filter id="shadow"><feDropShadow dx="34" dy="18" stdDeviation="42"/></filter><linearGradient id="gradient" x1="0.314679" y1="1.316193" x2="0.450731" y2="0.136498"><stop offset="0.0" stop-color="#ff0b85d1"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="translate(28.7, 378.67)" d="M 0 16.2632884979248 C 0 16.2632884979248 63.0273551940918 -24.78738021850586 105.2837066650391 37.77921295166016 C 147.5400543212891 100.3458099365234 166.1727752685547 75.70912933349609 198.4733123779297 49.33173751831055 C 230.7738342285156 22.95434379577637 282.8352355957031 53.26273345947266 256.8045349121094 103.7436065673828 C 230.7738342285156 154.2244873046875 189.2401275634766 198.7200012207031 189.2401275634766 198.7200012207031 L 0 198.7200012207031" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ktb8w =
    '<svg viewBox="221.8 481.9 155.9 160.6" ><defs><filter id="shadow"><feDropShadow dx="34" dy="18" stdDeviation="42"/></filter><linearGradient id="gradient" x1="0.314679" y1="1.316193" x2="0.450731" y2="0.136498"><stop offset="0.0" stop-color="#ff0b85d1"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="matrix(0.766044, 0.642788, -0.642788, 0.766044, 309.52, 478.16)" d="M 0 136.5047607421875 C 0 136.5047607421875 93.06310272216797 -63.83659744262695 93.07569122314453 29.8532543182373 C 93.08827972412109 123.5431060791016 0 136.5047607421875 0 136.5047607421875 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_kq6gje =
    '<svg viewBox="0.1 4.9 95.4 133.2" ><defs><filter id="shadow"><feDropShadow dx="15" dy="9" stdDeviation="35"/></filter><linearGradient id="gradient" x1="0.314679" y1="1.316193" x2="0.450731" y2="0.136498"><stop offset="0.0" stop-color="#ff0b85d1"  /><stop offset="1.0" stop-color="#ff2af598"  /></linearGradient></defs><path transform="matrix(0.999848, -0.017452, 0.017452, 0.999848, 0.0, 1.62)" d="M 6.45872521978975e-16 136.5317840576172 C 6.45872521978975e-16 136.5317840576172 93.08049011230469 -63.84510803222656 93.08003997802734 29.85530281066895 C 93.07959747314453 123.5557098388672 6.45872521978975e-16 136.5317840576172 6.45872521978975e-16 136.5317840576172 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_r1bh =
    '<svg viewBox="9.9 0.0 9.9 19.9" ><path  d="M 9.936005592346191 19.87199020385742 L 9.936005592346191 19.86957931518555 L 9.936005592346191 9.935999870300293 L 9.936005592346191 -3.424072190227889e-07 L 19.87200546264648 9.935999870300293 L 9.937715530395508 19.87028884887695 L 9.936005592346191 19.87199020385742 Z" fill="none" stroke="#ffffff" stroke-width="2.8388571739196777" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_eyd4nv =
    '<svg viewBox="0.0 0.0 320.2 208.7" ><defs><filter id="shadow"><feDropShadow dx="0" dy="12" stdDeviation="50"/></filter></defs><path  d="M 161.7362823486328 183.7279052734375 C 152.2445983886719 198.7089996337891 135.5192718505859 208.656005859375 116.4717025756836 208.656005859375 C 88.63309478759766 208.656005859375 65.75672912597656 187.4130706787109 63.17145156860352 160.2515258789062 C 58.72166442871094 161.57666015625 54.00860595703125 162.2880096435547 49.12829971313477 162.2880096435547 C 21.9951000213623 162.2880096435547 0 140.2929077148438 0 113.1597061157227 C 0 88.46009826660156 18.22666549682617 68.01795196533203 41.96496200561523 64.55077362060547 C 41.95615386962891 64.19469451904297 41.95170211791992 63.83789825439453 41.95170211791992 63.47970199584961 C 41.95170211791992 40.00590133666992 60.98130035400391 20.9763011932373 84.45600128173828 20.9763011932373 C 94.27772521972656 20.9763011932373 103.3226318359375 24.30860328674316 110.5198745727539 29.90279388427734 C 119.3097991943359 12.17215824127197 137.4598846435547 0 158.4243011474609 0 C 178.1517333984375 0 195.3872985839844 10.77875137329102 204.67626953125 26.82511711120605 C 211.0673522949219 23.78213882446289 218.2178955078125 22.0797004699707 225.7677001953125 22.0797004699707 C 252.9009094238281 22.0797004699707 274.89599609375 44.07570266723633 274.89599609375 71.20800018310547 C 274.89599609375 71.39182281494141 274.8949279785156 71.57636260986328 274.8929138183594 71.75970458984375 C 274.8944396972656 71.75970458984375 274.8944702148438 71.75970458984375 274.89599609375 71.75970458984375 C 299.8944091796875 71.75970458984375 320.1596984863281 92.02500152587891 320.1596984863281 117.024299621582 C 320.1596984863281 142.022705078125 299.8944091796875 162.2880096435547 274.89599609375 162.2880096435547 C 269.8014221191406 162.2880096435547 264.9030151367188 161.4461212158203 260.3330383300781 159.8942413330078 C 257.9138793945312 187.22509765625 234.9595336914062 208.656005859375 207 208.656005859375 C 187.9530181884766 208.656005859375 171.2278747558594 198.7089996337891 161.7362823486328 183.7279052734375 Z" fill="#f0f7fe" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_pm98k6 =
    '<svg viewBox="502.3 129.2 246.2 160.1" ><defs><filter id="shadow"><feDropShadow dx="0" dy="12" stdDeviation="50"/></filter></defs><path transform="translate(502.32, 129.17)" d="M 124.1999969482422 140.6716003417969 C 117.0038528442383 152.3184814453125 104.1198348999023 160.0803070068359 89.42400360107422 160.0803070068359 C 67.78438568115234 160.0803070068359 50.07424926757812 143.2539367675781 48.66607666015625 121.970703125 C 45.14904403686523 123.061279296875 41.41189956665039 123.6483001708984 37.53630065917969 123.6483001708984 C 16.80570030212402 123.6483001708984 0 106.8426055908203 0 86.11199951171875 C 0 66.87445068359375 14.47042274475098 51.01701354980469 33.12133407592773 48.83261871337891 C 33.28031158447266 30.98158073425293 47.79970932006836 16.55999946594238 65.68830108642578 16.55999946594238 C 72.89981079101562 16.55999946594238 79.56361389160156 18.90377807617188 84.95992279052734 22.87140464782715 C 91.75890350341797 9.309715270996094 105.788703918457 0 121.992301940918 0 C 137.4116058349609 0 150.8622589111328 8.429954528808594 157.9869537353516 20.93219947814941 C 162.6703186035156 18.83257102966309 167.8634948730469 17.6643009185791 173.3283081054688 17.6643009185791 C 194.0588989257812 17.6643009185791 210.8637084960938 34.46910095214844 210.8637084960938 55.19970321655273 C 210.8637084960938 55.20096588134766 210.8636932373047 55.20273971557617 210.8636932373047 55.20400619506836 C 211.0470733642578 55.20115661621094 211.2322540283203 55.19970321655273 211.4163055419922 55.19970321655273 C 230.6222991943359 55.19970321655273 246.1923065185547 70.76969909667969 246.1923065185547 89.97570037841797 C 246.1923065185547 109.1826019287109 230.6222991943359 124.7517013549805 211.4163055419922 124.7517013549805 C 207.2968597412109 124.7517013549805 203.3444061279297 124.0353546142578 199.6773529052734 122.7206954956055 C 197.9081573486328 143.6480560302734 180.3609008789062 160.0803070068359 158.9759979248047 160.0803070068359 C 144.2801666259766 160.0803070068359 131.3961486816406 152.3184814453125 124.1999969482422 140.6716003417969 Z" fill="#f0f7fe" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_pf3o =
    '<svg viewBox="147.9 37.5 17.4 26.0" ><defs><filter id="shadow"><feDropShadow dx="6" dy="7" stdDeviation="8"/></filter></defs><path transform="translate(147.94, 37.54)" d="M 6.724100112915039 13.11696147918701 C 6.724100112915039 13.11696147918701 3.735612154006958 12.15705871582031 3.214824199676514 13.73033428192139 C 2.168121099472046 13.7866268157959 1.88465416431427 14.43655300140381 1.664179921150208 14.68877410888672 C 3.186257839202881 14.56668472290039 3.903348445892334 14.41827583312988 4.597732543945312 15.47687435150146 C 5.292116165161133 16.53474044799805 7.290301322937012 17.25411987304688 8.05939769744873 17.31114387512207 C 6.95482873916626 18.60514640808105 6.272164344787598 19.19146919250488 6.727762222290039 20.73696327209473 C 7.184825420379639 22.28026580810547 8.879034042358398 24.82221603393555 8.696648597717285 25.9159049987793 C 9.914017677307129 26.27486228942871 10.42967891693115 24.76884651184082 10.42967891693115 24.76884651184082 C 10.42967891693115 24.76884651184082 11.72615528106689 24.96623802185059 11.61701679229736 23.2796459197998 C 12.42053890228271 23.77604675292969 12.38098526000977 22.49812507629395 12.10630798339844 21.67201042175293 C 12.76260375976562 21.88840866088867 12.59706497192383 20.73550224304199 12.47034645080566 20.2895450592041 C 13.20794677734375 19.97518348693848 12.76553344726562 18.76671409606934 12.76553344726562 18.76671409606934 C 13.39619255065918 19.24995613098145 13.05193042755127 17.47855949401855 13.05193042755127 17.47855949401855 C 13.05193042755127 17.47855949401855 15.33431434631348 18.05172348022461 16.60149192810059 19.5548152923584 C 17.58813285827637 20.29977989196777 17.632080078125 18.35585021972656 16.96260070800781 17.87114715576172 C 17.66943740844727 17.85652542114258 17.11788558959961 16.67364501953125 16.34073257446289 16.28032684326172 C 17.21237373352051 16.31103134155273 17.31565284729004 14.47310733795166 15.6910285949707 14.62078380584717 C 14.06567192077637 14.76919269561768 12.13121223449707 14.55864238739014 11.75765132904053 14.16166877746582 C 11.38262557983398 13.76469421386719 11.60969161987305 12.97586345672607 10.87941646575928 12.85450553894043 C 11.42657375335693 11.82149505615234 10.70215797424316 11.16425800323486 10.33225917816162 11.17010688781738 C 10.50805282592773 10.61156463623047 10.13742160797119 10.18242359161377 9.666441917419434 10.18023014068604 C 10.07662677764893 9.64069652557373 8.462257385253906 9.185235977172852 8.361908912658691 9.177925109863281 C 8.95301342010498 8.919124603271484 8.120924949645996 8.354733467102051 7.853572845458984 8.334994316101074 C 8.076244354248047 8.048413276672363 7.291033744812012 7.755982875823975 7.057374954223633 7.738437175750732 C 7.477814197540283 7.50156831741333 7.061769962310791 6.765375137329102 6.598847389221191 6.663755416870117 C 6.388627529144287 5.876387119293213 5.80118465423584 5.631476402282715 5.664944648742676 5.654870986938477 C 5.547016620635986 4.53851842880249 5.283326625823975 4.015799045562744 4.889988899230957 4.32211971282959 C 4.643877983093262 3.565456390380859 4.235158443450928 2.729836940765381 3.915067911148071 2.974747180938721 C 3.931182384490967 2.305081844329834 3.088838815689087 0.9672132134437561 2.635438442230225 1.637609720230103 C 2.393722534179688 0.8151494860649109 1.544786930084229 0.483241081237793 1.396827459335327 1.10977303981781 C 1.327975034713745 0.2324820905923843 0.2006998211145401 0.01462151482701302 2.348612497371505e-06 0 C -0.0007301238947547972 1.812336802482605 0.1699359714984894 4.039924621582031 0.415314257144928 6.172472476959229 C 0.6599600911140442 8.305020332336426 2.713080644607544 8.72538948059082 4.328915119171143 10.05375385284424 C 5.945481777191162 11.38211822509766 6.585662841796875 12.2681827545166 6.724100112915039 13.11696147918701" fill="#4a90e2" fill-opacity="0.62" stroke="none" stroke-width="1" stroke-opacity="0.62" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_yzrthr =
    '<svg viewBox="0.0 0.0 36.9 42.4" ><defs><filter id="shadow"><feDropShadow dx="6" dy="7" stdDeviation="8"/></filter></defs><path transform="matrix(0.927184, 0.374607, -0.374607, 0.927184, 13.26, 0.0)" d="M 8.855762481689453 27.13143920898438 C 8.855762481689453 27.13143920898438 7.775619983673096 27.34967422485352 6.2355637550354 26.9909553527832 C 4.695507526397705 26.63046836853027 3.493597745895386 26.9688663482666 2.933816194534302 28.10952186584473 C 1.94653308391571 28.45410537719727 0.7095822691917419 28.98511505126953 0 29.95171165466309 C 1.918500185012817 29.51435852050781 3.902702569961548 29.47636604309082 5.11862850189209 30.35549163818359 C 6.334554672241211 31.234619140625 11.0440788269043 32.92660522460938 17.49777412414551 32.43624114990234 C 18.64799690246582 33.7297477722168 20.50605201721191 35.11338043212891 22.52266693115234 35.39699554443359 C 20.43158912658691 34.36236572265625 19.15872192382812 32.37792587280273 19.15872192382812 32.37792587280273 C 19.15872192382812 32.37792587280273 22.59099769592285 32.8417854309082 24.61724853515625 33.23319625854492 C 26.6452522277832 33.62549209594727 24.34918403625488 31.6092414855957 24.34918403625488 31.6092414855957 C 24.34918403625488 31.6092414855957 25.5326976776123 30.81228446960449 24.02680587768555 30.25830268859863 C 24.39824295043945 29.67869758605957 24.78719902038574 27.90453910827637 22.6488151550293 28.55482864379883 C 20.50955581665039 29.20511817932129 18.54900550842285 30.02681350708008 16.41588020324707 28.56189727783203 C 17.69225120544434 28.70414733886719 17.97433280944824 27.22597694396973 17.55997085571289 26.69850158691406 C 18.03390312194824 25.79640197753906 18.48155212402344 25.42619705200195 17.9305305480957 24.3438549041748 C 19.29450607299805 23.88087844848633 19.22267150878906 22.74905776977539 18.32912254333496 21.8646297454834 C 19.64053726196289 21.28414154052734 19.5897274017334 19.94822311401367 18.81882286071777 19.49761390686035 C 19.63615608215332 18.39848518371582 19.58009147644043 17.69871711730957 18.92657470703125 17.06079864501953 C 19.88845252990723 16.47589302062988 20.22922706604004 15.03218078613281 19.32954597473145 14.63546943664551 C 20.07942581176758 14.07176780700684 20.28529357910156 13.15641593933105 19.70974349975586 12.50966167449951 C 20.25550842285156 11.50595474243164 22.89760780334473 4.572781562805176 22.62428665161133 0.2089557200670242 C 22.38512992858887 -0.580049455165863 21.02378463745117 0.8583608865737915 17.36899757385254 4.643465518951416 C 13.71421051025391 8.427685737609863 11.56181144714355 12.71022605895996 10.83295631408691 14.57273769378662 C 10.10410118103027 16.43524932861328 10.81631183624268 19.02933502197266 11.10102081298828 21.05000305175781 C 11.6494140625 24.95085144042969 10.57890796661377 26.63135147094727 8.855762481689453 27.13143920898438" fill="#4a90e2" fill-opacity="0.77" stroke="none" stroke-width="1" stroke-opacity="0.77" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_uaps5m =
    '<svg viewBox="256.1 64.0 18.0 21.0" ><defs><filter id="shadow"><feDropShadow dx="6" dy="7" stdDeviation="8"/></filter></defs><path transform="matrix(0.927184, 0.374607, -0.374607, 0.927184, 262.77, 64.03)" d="M 2.990147352218628 13.52178287506104 C 2.251642227172852 13.34118843078613 1.675289034843445 13.51071739196777 1.406856298446655 14.08215713500977 C 0.9334233403205872 14.25478363037109 0.3402668237686157 14.52080631256104 -8.536824269407897e-14 15.00504779815674 C 0.9199807047843933 14.78594398498535 1.871467590332031 14.76691055297852 2.45454216003418 15.20733070373535 C 3.037616729736328 15.64775085449219 5.295980453491211 16.49539375305176 8.390727996826172 16.24973297119141 C 8.942296981811523 16.89774703979492 9.833292007446289 17.59091186523438 10.80032157897949 17.73299598693848 C 9.797584533691406 17.21467399597168 9.187204360961914 16.22051811218262 9.187204360961914 16.22051811218262 C 9.187204360961914 16.22051811218262 10.83308792114258 16.45290184020996 11.80473899841309 16.64898872375488 C 12.77723026275635 16.84551620483398 11.67619323730469 15.83542728424072 11.67619323730469 15.83542728424072 C 11.67619323730469 15.83542728424072 12.24372482299805 15.43617248535156 11.52160358428955 15.15864086151123 C 11.6997184753418 14.86827373504639 11.88623523712158 13.97946643829346 10.86081314086914 14.30524444580078 C 9.83497142791748 14.63102245330811 8.894826889038086 15.04267120361328 7.871926307678223 14.3087854385376 C 8.483986854553223 14.38004970550537 8.619253158569336 13.63952350616455 8.420554161071777 13.37527179718018 C 8.647818565368652 12.92334270477295 8.862481117248535 12.73787975311279 8.598248481750488 12.19565391540527 C 9.252317428588867 11.96371364593506 9.217870712280273 11.39670085906982 8.789386749267578 10.9536247253418 C 9.41825008392334 10.66281414031982 9.393885612487793 9.993553161621094 9.024212837219238 9.767809867858887 C 9.416149139404297 9.21717357635498 9.389264106750488 8.866608619689941 9.075882911682129 8.547027587890625 C 9.53713321685791 8.254003524780273 9.700545310974121 7.530741214752197 9.269121170043945 7.331998825073242 C 9.628711700439453 7.049598693847656 9.72743034362793 6.591030597686768 9.451436996459961 6.267022609710693 C 9.71314811706543 5.764191150665283 10.98011684417725 2.290847539901733 10.8490514755249 0.1046815067529678 C 10.73436832427979 -0.2905900478363037 10.0815601348877 0.4300170242786407 8.328975677490234 2.326258182525635 C 6.576391696929932 4.222056865692139 5.544249057769775 6.367500782012939 5.194740295410156 7.300571918487549 C 4.845231533050537 8.233642578125 5.186758995056152 9.533214569091797 5.323285579681396 10.54551696777344 C 5.586257457733154 12.49974250793457 5.072916507720947 13.34163188934326 4.2466139793396 13.59216213226318 C 4.2466139793396 13.59216213226318 3.728652477264404 13.70149230957031 2.990147352218628 13.52178287506104 Z" fill="#4a90e2" fill-opacity="0.62" stroke="none" stroke-width="1" stroke-opacity="0.62" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
