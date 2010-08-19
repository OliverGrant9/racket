/* Generated by wbuild
 * (generator version 3.2)
 */
#ifndef ___XWFRAME_H
#define ___XWFRAME_H
#include <./xwCommon.h>
_XFUNCPROTOBEGIN
typedef enum {
            XfwfRaised, XfwfSunken, XfwfChiseled, XfwfLedged, XfwfPlain, XfwfNothing } FrameType;

typedef enum {XfwfAuto, XfwfColor, XfwfStipple, XfwfBlack } ShadowScheme;

typedef Pixmap  Bitmap;

void XfwfDrawFrame(
#if NeedFunctionPrototypes
Widget,int ,int ,int ,int ,FrameType ,int ,GC ,GC ,GC 
#endif
);
Boolean  cvtStringToFrameType(
#if NeedFunctionPrototypes
Display *,XrmValuePtr ,Cardinal *,XrmValuePtr ,XrmValuePtr ,XtPointer *
#endif
);
Boolean  cvtFrameTypeToString(
#if NeedFunctionPrototypes
Display *,XrmValuePtr ,Cardinal *,XrmValuePtr ,XrmValuePtr ,XtPointer *
#endif
);
Boolean  cvtStringToShadowScheme(
#if NeedFunctionPrototypes
Display *,XrmValuePtr ,Cardinal *,XrmValuePtr ,XrmValuePtr ,XtPointer *
#endif
);
Boolean  cvtShadowSchemeToString(
#if NeedFunctionPrototypes
Display *,XrmValuePtr ,Cardinal *,XrmValuePtr ,XrmValuePtr ,XtPointer *
#endif
);
Pixmap  GetGray(
#if NeedFunctionPrototypes
Widget
#endif
);
Pixmap  GetLightGray(
#if NeedFunctionPrototypes
Widget
#endif
);
Pixmap  GetDarkGray(
#if NeedFunctionPrototypes
Widget
#endif
);
#ifndef XtNcursor
#define XtNcursor "cursor"
#endif
#ifndef XtCCursor
#define XtCCursor "Cursor"
#endif
#ifndef XtRCursor
#define XtRCursor "Cursor"
#endif

#ifndef XtNframeType
#define XtNframeType "frameType"
#endif
#ifndef XtCFrameType
#define XtCFrameType "FrameType"
#endif
#ifndef XtRFrameType
#define XtRFrameType "FrameType"
#endif

#ifndef XtNframeWidth
#define XtNframeWidth "frameWidth"
#endif
#ifndef XtCFrameWidth
#define XtCFrameWidth "FrameWidth"
#endif
#ifndef XtRDimension
#define XtRDimension "Dimension"
#endif

#ifndef XtNouterOffset
#define XtNouterOffset "outerOffset"
#endif
#ifndef XtCOuterOffset
#define XtCOuterOffset "OuterOffset"
#endif
#ifndef XtRDimension
#define XtRDimension "Dimension"
#endif

#ifndef XtNinnerOffset
#define XtNinnerOffset "innerOffset"
#endif
#ifndef XtCInnerOffset
#define XtCInnerOffset "InnerOffset"
#endif
#ifndef XtRDimension
#define XtRDimension "Dimension"
#endif

#ifndef XtNshadowScheme
#define XtNshadowScheme "shadowScheme"
#endif
#ifndef XtCShadowScheme
#define XtCShadowScheme "ShadowScheme"
#endif
#ifndef XtRShadowScheme
#define XtRShadowScheme "ShadowScheme"
#endif

#ifndef XtNtopShadowColor
#define XtNtopShadowColor "topShadowColor"
#endif
#ifndef XtCTopShadowColor
#define XtCTopShadowColor "TopShadowColor"
#endif
#ifndef XtRPixel
#define XtRPixel "Pixel"
#endif

#ifndef XtNbottomShadowColor
#define XtNbottomShadowColor "bottomShadowColor"
#endif
#ifndef XtCBottomShadowColor
#define XtCBottomShadowColor "BottomShadowColor"
#endif
#ifndef XtRPixel
#define XtRPixel "Pixel"
#endif

#ifndef XtNtopShadowStipple
#define XtNtopShadowStipple "topShadowStipple"
#endif
#ifndef XtCTopShadowStipple
#define XtCTopShadowStipple "TopShadowStipple"
#endif
#ifndef XtRBitmap
#define XtRBitmap "Bitmap"
#endif

#ifndef XtNbottomShadowStipple
#define XtNbottomShadowStipple "bottomShadowStipple"
#endif
#ifndef XtCBottomShadowStipple
#define XtCBottomShadowStipple "BottomShadowStipple"
#endif
#ifndef XtRBitmap
#define XtRBitmap "Bitmap"
#endif

typedef struct _XfwfFrameClassRec *XfwfFrameWidgetClass;
typedef struct _XfwfFrameRec *XfwfFrameWidget;
externalref WidgetClass xfwfFrameWidgetClass;
_XFUNCPROTOEND
#endif /* ___XWFRAME_H */