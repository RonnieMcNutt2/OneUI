.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;,
        Landroid/location/Location$Format;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2

.field private static final HAS_ALTITUDE_ACCURACY_MASK:I = 0x20

.field private static final HAS_ALTITUDE_MASK:I = 0x1

.field private static final HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final HAS_BEARING_MASK:I = 0x4

.field private static final HAS_ELAPSED_REALTIME_UNCERTAINTY_MASK:I = 0x100

.field private static final HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final HAS_MSL_ALTITUDE_ACCURACY_MASK:I = 0x400

.field private static final HAS_MSL_ALTITUDE_MASK:I = 0x200

.field private static final HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final HAS_SPEED_MASK:I = 0x2

.field private static final sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAltitudeAccuracyMeters:F

.field private mAltitudeMeters:D

.field private mBearingAccuracyDegrees:F

.field private mBearingDegrees:F

.field private mElapsedRealtimeNs:J

.field private mElapsedRealtimeUncertaintyNs:D

.field private mExtras:Landroid/os/Bundle;

.field private mFieldsMask:I

.field private mHorizontalAccuracyMeters:F

.field private mLatitudeDegrees:D

.field private mLongitudeDegrees:D

.field private mMslAltitudeAccuracyMeters:F

.field private mMslAltitudeMeters:D

.field private mProvider:Ljava/lang/String;

.field private mSpeedAccuracyMetersPerSecond:F

.field private mSpeedMetersPerSecond:F

.field private mTimeMs:J


# direct methods
.method public static synthetic $r8$lambda$AN3VJCcYjECjC7u5pDkntGBLoAg()Landroid/location/Location$BearingDistanceCache;
    .registers 2

    new-instance v0, Landroid/location/Location$BearingDistanceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location$BearingDistanceCache-IA;)V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputmAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAltitudeMeters(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBearingAccuracyDegrees(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBearingDegrees(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmElapsedRealtimeNs(Landroid/location/Location;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmElapsedRealtimeUncertaintyNs(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExtras(Landroid/location/Location;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFieldsMask(Landroid/location/Location;I)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHorizontalAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatitudeDegrees(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLongitudeDegrees(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMslAltitudeMeters(Landroid/location/Location;D)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSpeedMetersPerSecond(Landroid/location/Location;F)V
    .registers 2

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeMs(Landroid/location/Location;J)V
    .registers 3

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/location/Location$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/Location$$ExternalSyntheticLambda0;-><init>()V

    .line 114
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    .line 1015
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 151
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 144
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private static areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "extras1"    # Landroid/os/Bundle;
    .param p1, "extras2"    # Landroid/os/Bundle;

    .line 943
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1d

    .line 945
    :cond_11
    if-eqz p0, :cond_1b

    if-nez p1, :cond_16

    goto :goto_1b

    .line 948
    :cond_16
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    return v0

    .line 946
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0

    .line 944
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method private static computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .registers 98
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # Landroid/location/Location$BearingDistanceCache;

    .line 1231
    move-object/from16 v0, p8

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p0, v1

    .line 1232
    .end local p0    # "lat1":D
    .local v3, "lat1":D
    mul-double v5, p4, v1

    .line 1233
    .end local p4    # "lat2":D
    .local v5, "lat2":D
    mul-double v7, p2, v1

    .line 1234
    .end local p2    # "lon1":D
    .local v7, "lon1":D
    mul-double v1, v1, p6

    .line 1236
    .end local p6    # "lon2":D
    .local v1, "lon2":D
    const-wide v9, 0x415854a640000000L    # 6378137.0

    .line 1237
    .local v9, "a":D
    const-wide v11, 0x41583fc4141bda51L    # 6356752.3142

    .line 1238
    .local v11, "b":D
    sub-double v13, v9, v11

    div-double/2addr v13, v9

    .line 1239
    .local v13, "f":D
    mul-double v15, v9, v9

    mul-double v17, v11, v11

    sub-double v15, v15, v17

    mul-double v17, v11, v11

    div-double v15, v15, v17

    .line 1241
    .local v15, "aSqMinusBSqOverBSq":D
    sub-double v17, v1, v7

    .line 1242
    .local v17, "l":D
    const-wide/16 v19, 0x0

    .line 1243
    .local v19, "aA":D
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    sub-double v23, v21, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->atan(D)D

    move-result-wide v23

    .line 1244
    .local v23, "u1":D
    sub-double v25, v21, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v27

    mul-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    .line 1246
    .local v25, "u2":D
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v27

    .line 1247
    .local v27, "cosU1":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v29

    .line 1248
    .local v29, "cosU2":D
    move-wide/from16 p0, v9

    .end local v9    # "a":D
    .local p0, "a":D
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    .line 1249
    .local v9, "sinU1":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    .line 1250
    .local v31, "sinU2":D
    mul-double v33, v27, v29

    .line 1251
    .local v33, "cosU1cosU2":D
    mul-double v35, v9, v31

    .line 1253
    .local v35, "sinU1sinU2":D
    const-wide/16 v37, 0x0

    .line 1254
    .local v37, "sigma":D
    const-wide/16 v39, 0x0

    .line 1259
    .local v39, "deltaSigma":D
    const-wide/16 v41, 0x0

    .line 1260
    .local v41, "cosLambda":D
    const-wide/16 v43, 0x0

    .line 1262
    .local v43, "sinLambda":D
    move-wide/from16 v45, v17

    .line 1263
    .local v45, "lambda":D
    const/16 v47, 0x0

    move-wide/from16 p2, v1

    move/from16 v1, v47

    .local v1, "iter":I
    .local p2, "lon2":D
    :goto_6a
    const/16 v2, 0x14

    if-ge v1, v2, :cond_16e

    .line 1264
    move-wide/from16 v47, v45

    .line 1265
    .local v47, "lambdaOrig":D
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->cos(D)D

    move-result-wide v41

    .line 1266
    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sin(D)D

    move-result-wide v43

    .line 1267
    mul-double v49, v29, v43

    .line 1268
    .local v49, "t1":D
    mul-double v51, v27, v31

    mul-double v53, v9, v29

    mul-double v53, v53, v41

    sub-double v51, v51, v53

    .line 1269
    .local v51, "t2":D
    mul-double v53, v49, v49

    mul-double v55, v51, v51

    add-double v53, v53, v55

    .line 1270
    .local v53, "sinSqSigma":D
    move-wide/from16 p4, v7

    .end local v7    # "lon1":D
    .local p4, "lon1":D
    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 1271
    .local v7, "sinSigma":D
    mul-double v55, v33, v41

    move-wide/from16 v57, v5

    .end local v5    # "lat2":D
    .local v57, "lat2":D
    add-double v5, v35, v55

    .line 1272
    .local v5, "cosSigma":D
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v37

    .line 1273
    const-wide/16 v55, 0x0

    cmpl-double v2, v7, v55

    if-nez v2, :cond_a1

    move-wide/from16 v59, v55

    goto :goto_a5

    .line 1274
    :cond_a1
    mul-double v59, v33, v43

    div-double v59, v59, v7

    :goto_a5
    nop

    .line 1275
    .local v59, "sinAlpha":D
    mul-double v61, v59, v59

    sub-double v61, v21, v61

    .line 1276
    .local v61, "cosSqAlpha":D
    cmpl-double v2, v61, v55

    const-wide/high16 v63, 0x4000000000000000L    # 2.0

    if-nez v2, :cond_b1

    goto :goto_b7

    :cond_b1
    mul-double v55, v35, v63

    div-double v55, v55, v61

    sub-double v55, v5, v55

    .line 1278
    .local v55, "cos2SM":D
    :goto_b7
    mul-double v65, v61, v15

    .line 1279
    .local v65, "uSquared":D
    const-wide/high16 v67, 0x40d0000000000000L    # 16384.0

    div-double v67, v65, v67

    const-wide v69, 0x4065e00000000000L    # 175.0

    mul-double v69, v69, v65

    const-wide/high16 v71, 0x4074000000000000L    # 320.0

    sub-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, -0x3f78000000000000L    # -768.0

    add-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, 0x40b0000000000000L    # 4096.0

    add-double v71, v71, v69

    mul-double v67, v67, v71

    add-double v19, v67, v21

    .line 1281
    const-wide/high16 v67, 0x4090000000000000L    # 1024.0

    div-double v67, v65, v67

    const-wide v69, 0x4047800000000000L    # 47.0

    mul-double v69, v69, v65

    const-wide v71, 0x4052800000000000L    # 74.0

    sub-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, -0x3fa0000000000000L    # -128.0

    add-double v71, v71, v69

    mul-double v71, v71, v65

    const-wide/high16 v69, 0x4070000000000000L    # 256.0

    add-double v71, v71, v69

    mul-double v67, v67, v71

    .line 1283
    .local v67, "bB":D
    const-wide/high16 v69, 0x4030000000000000L    # 16.0

    div-double v69, v13, v69

    mul-double v69, v69, v61

    const-wide/high16 v71, 0x4008000000000000L    # 3.0

    mul-double v71, v71, v61

    const-wide/high16 v73, 0x4010000000000000L    # 4.0

    sub-double v71, v73, v71

    mul-double v71, v71, v13

    add-double v71, v71, v73

    mul-double v69, v69, v71

    .line 1284
    .local v69, "cC":D
    mul-double v71, v55, v55

    .line 1285
    .local v71, "cos2SMSq":D
    mul-double v75, v67, v7

    div-double v77, v67, v73

    mul-double v79, v71, v63

    const-wide/high16 v81, -0x4010000000000000L    # -1.0

    add-double v79, v79, v81

    mul-double v79, v79, v5

    const-wide/high16 v83, 0x4018000000000000L    # 6.0

    div-double v83, v67, v83

    mul-double v83, v83, v55

    mul-double v85, v7, v73

    mul-double v85, v85, v7

    const-wide/high16 v87, -0x3ff8000000000000L    # -3.0

    add-double v85, v85, v87

    mul-double v83, v83, v85

    mul-double v73, v73, v71

    add-double v73, v73, v87

    mul-double v83, v83, v73

    sub-double v79, v79, v83

    mul-double v77, v77, v79

    add-double v77, v55, v77

    mul-double v39, v75, v77

    .line 1289
    sub-double v73, v21, v69

    mul-double v73, v73, v13

    mul-double v73, v73, v59

    mul-double v75, v69, v7

    mul-double v77, v69, v5

    mul-double v63, v63, v55

    mul-double v63, v63, v55

    add-double v63, v63, v81

    mul-double v77, v77, v63

    add-double v77, v55, v77

    mul-double v75, v75, v77

    add-double v75, v37, v75

    mul-double v73, v73, v75

    add-double v45, v17, v73

    .line 1292
    sub-double v63, v45, v47

    div-double v63, v63, v45

    .line 1293
    .local v63, "delta":D
    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->abs(D)D

    move-result-wide v73

    const-wide v75, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v2, v73, v75

    if-gez v2, :cond_166

    .line 1294
    goto :goto_172

    .line 1263
    .end local v47    # "lambdaOrig":D
    .end local v49    # "t1":D
    .end local v51    # "t2":D
    .end local v53    # "sinSqSigma":D
    .end local v59    # "sinAlpha":D
    .end local v63    # "delta":D
    .end local v65    # "uSquared":D
    .end local v67    # "bB":D
    .end local v69    # "cC":D
    .end local v71    # "cos2SMSq":D
    :cond_166
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v7, p4

    move-wide/from16 v5, v57

    goto/16 :goto_6a

    .end local v55    # "cos2SM":D
    .end local v57    # "lat2":D
    .end local v61    # "cosSqAlpha":D
    .end local p4    # "lon1":D
    .local v5, "lat2":D
    .local v7, "lon1":D
    :cond_16e
    move-wide/from16 v57, v5

    move-wide/from16 p4, v7

    .line 1298
    .end local v1    # "iter":I
    .end local v5    # "lat2":D
    .end local v7    # "lon1":D
    .restart local v57    # "lat2":D
    .restart local p4    # "lon1":D
    :goto_172
    mul-double v1, v11, v19

    sub-double v5, v37, v39

    mul-double/2addr v1, v5

    double-to-float v1, v1

    iput v1, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    .line 1299
    mul-double v1, v29, v43

    mul-double v5, v27, v31

    mul-double v7, v9, v29

    mul-double v7, v7, v41

    sub-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 1301
    .local v1, "initialBearing":F
    float-to-double v5, v1

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v5, v7

    double-to-float v1, v5

    .line 1302
    iput v1, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    .line 1303
    mul-double v5, v27, v43

    neg-double v7, v9

    mul-double v7, v7, v29

    mul-double v21, v27, v31

    mul-double v21, v21, v41

    add-double v7, v7, v21

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v2, v5

    .line 1305
    .local v2, "finalBearing":F
    float-to-double v5, v2

    const-wide v7, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v5, v7

    double-to-float v2, v5

    .line 1306
    iput v2, v0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    .line 1307
    iput-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    .line 1308
    move-wide/from16 v5, v57

    .end local v57    # "lat2":D
    .restart local v5    # "lat2":D
    iput-wide v5, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    .line 1309
    move-wide/from16 v7, p4

    .end local p4    # "lon1":D
    .restart local v7    # "lon1":D
    iput-wide v7, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    .line 1310
    move/from16 v21, v1

    move/from16 v22, v2

    move-wide/from16 v1, p2

    .end local v2    # "finalBearing":F
    .end local p2    # "lon2":D
    .local v1, "lon2":D
    .local v21, "initialBearing":F
    .local v22, "finalBearing":F
    iput-wide v1, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    .line 1311
    return-void
.end method

.method public static convert(Ljava/lang/String;)D
    .registers 20
    .param p0, "coordinate"    # Ljava/lang/String;

    .line 1164
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const/4 v1, 0x0

    .line 1167
    .local v1, "negative":Z
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_18

    .line 1168
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .end local p0    # "coordinate":Ljava/lang/String;
    .local v0, "coordinate":Ljava/lang/String;
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1a

    .line 1167
    .end local v0    # "coordinate":Ljava/lang/String;
    .restart local p0    # "coordinate":Ljava/lang/String;
    :cond_18
    move v3, v1

    move-object v1, v0

    .line 1172
    .end local p0    # "coordinate":Ljava/lang/String;
    .local v1, "coordinate":Ljava/lang/String;
    .local v3, "negative":Z
    :goto_1a
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    .line 1173
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 1174
    .local v6, "tokens":I
    const-string v7, "coordinate="

    if-lt v6, v5, :cond_134

    .line 1178
    :try_start_2a
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_119

    .line 1180
    .local v0, "degrees":Ljava/lang/String;
    if-ne v6, v5, :cond_40

    .line 1181
    :try_start_30
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_34} :catch_3a

    .line 1182
    .local v7, "val":D
    if-eqz v3, :cond_38

    neg-double v9, v7

    goto :goto_39

    :cond_38
    move-wide v9, v7

    :goto_39
    return-wide v9

    .line 1220
    .end local v0    # "degrees":Ljava/lang/String;
    .end local v7    # "val":D
    :catch_3a
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    goto/16 :goto_11d

    .line 1185
    .restart local v0    # "degrees":Ljava/lang/String;
    :cond_40
    :try_start_40
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1186
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1188
    .local v9, "deg":I
    const-wide/16 v10, 0x0

    .line 1189
    .local v10, "sec":D
    const/4 v12, 0x0

    .line 1191
    .local v12, "secPresent":Z
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4f} :catch_119

    if-eqz v13, :cond_62

    .line 1192
    :try_start_51
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    int-to-double v13, v13

    .line 1193
    .local v13, "min":D
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 1194
    .local v15, "seconds":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5e} :catch_3a

    move-wide/from16 v10, v16

    .line 1195
    const/4 v12, 0x1

    .line 1196
    .end local v15    # "seconds":Ljava/lang/String;
    goto :goto_66

    .line 1197
    .end local v13    # "min":D
    :cond_62
    :try_start_62
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13
    :try_end_66
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_66} :catch_119

    .line 1200
    .restart local v13    # "min":D
    :goto_66
    const-wide/16 v15, 0x0

    if-eqz v3, :cond_78

    const/16 v2, 0xb4

    if-ne v9, v2, :cond_78

    cmpl-double v2, v13, v15

    if-nez v2, :cond_78

    cmpl-double v2, v10, v15

    if-nez v2, :cond_78

    move v2, v5

    goto :goto_79

    :cond_78
    const/4 v2, 0x0

    .line 1203
    .local v2, "isNegative180":Z
    :goto_79
    move-object/from16 p0, v4

    .end local v4    # "st":Ljava/util/StringTokenizer;
    .local p0, "st":Ljava/util/StringTokenizer;
    int-to-double v4, v9

    cmpg-double v4, v4, v15

    if-ltz v4, :cond_fd

    const/16 v4, 0xb3

    if-le v9, v4, :cond_8c

    if-eqz v2, :cond_87

    goto :goto_8c

    :cond_87
    move/from16 v16, v2

    move v15, v3

    goto/16 :goto_100

    .line 1208
    :cond_8c
    :goto_8c
    cmpg-double v4, v13, v15

    if-ltz v4, :cond_e3

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v17, v13, v4

    if-gez v17, :cond_e3

    if-eqz v12, :cond_a6

    const-wide v17, 0x404d800000000000L    # 59.0

    cmpl-double v17, v13, v17

    if-gtz v17, :cond_a2

    goto :goto_a6

    :cond_a2
    move/from16 v16, v2

    move v15, v3

    goto :goto_e6

    .line 1213
    :cond_a6
    :goto_a6
    cmpg-double v15, v10, v15

    if-ltz v15, :cond_c9

    cmpl-double v15, v10, v4

    if-gez v15, :cond_c9

    .line 1217
    int-to-double v4, v9

    const-wide v17, 0x40ac200000000000L    # 3600.0

    mul-double v4, v4, v17

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    mul-double/2addr v15, v13

    add-double/2addr v4, v15

    add-double/2addr v4, v10

    .line 1218
    .local v4, "val":D
    div-double v4, v4, v17

    .line 1219
    if-eqz v3, :cond_c4

    move/from16 v16, v2

    move v15, v3

    .end local v2    # "isNegative180":Z
    .end local v3    # "negative":Z
    .local v15, "negative":Z
    .local v16, "isNegative180":Z
    neg-double v2, v4

    goto :goto_c8

    .end local v15    # "negative":Z
    .end local v16    # "isNegative180":Z
    .restart local v2    # "isNegative180":Z
    .restart local v3    # "negative":Z
    :cond_c4
    move/from16 v16, v2

    move v15, v3

    .end local v2    # "isNegative180":Z
    .end local v3    # "negative":Z
    .restart local v15    # "negative":Z
    .restart local v16    # "isNegative180":Z
    move-wide v2, v4

    :goto_c8
    return-wide v2

    .line 1213
    .end local v4    # "val":D
    .end local v15    # "negative":Z
    .end local v16    # "isNegative180":Z
    .restart local v2    # "isNegative180":Z
    .restart local v3    # "negative":Z
    :cond_c9
    move/from16 v16, v2

    move v15, v3

    .line 1214
    .end local v2    # "isNegative180":Z
    .end local v3    # "negative":Z
    .restart local v15    # "negative":Z
    .restart local v16    # "isNegative180":Z
    :try_start_cc
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "coordinate":Ljava/lang/String;
    .end local v6    # "tokens":I
    .end local v15    # "negative":Z
    .end local p0    # "st":Ljava/util/StringTokenizer;
    throw v2

    .line 1208
    .end local v16    # "isNegative180":Z
    .restart local v1    # "coordinate":Ljava/lang/String;
    .restart local v2    # "isNegative180":Z
    .restart local v3    # "negative":Z
    .restart local v6    # "tokens":I
    .restart local p0    # "st":Ljava/util/StringTokenizer;
    :cond_e3
    move/from16 v16, v2

    move v15, v3

    .line 1209
    .end local v2    # "isNegative180":Z
    .end local v3    # "negative":Z
    .restart local v15    # "negative":Z
    .restart local v16    # "isNegative180":Z
    :goto_e6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "coordinate":Ljava/lang/String;
    .end local v6    # "tokens":I
    .end local v15    # "negative":Z
    .end local p0    # "st":Ljava/util/StringTokenizer;
    throw v2

    .line 1203
    .end local v16    # "isNegative180":Z
    .restart local v1    # "coordinate":Ljava/lang/String;
    .restart local v2    # "isNegative180":Z
    .restart local v3    # "negative":Z
    .restart local v6    # "tokens":I
    .restart local p0    # "st":Ljava/util/StringTokenizer;
    :cond_fd
    move/from16 v16, v2

    move v15, v3

    .line 1204
    .end local v2    # "isNegative180":Z
    .end local v3    # "negative":Z
    .restart local v15    # "negative":Z
    .restart local v16    # "isNegative180":Z
    :goto_100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "coordinate":Ljava/lang/String;
    .end local v6    # "tokens":I
    .end local v15    # "negative":Z
    .end local p0    # "st":Ljava/util/StringTokenizer;
    throw v2
    :try_end_117
    .catch Ljava/lang/NumberFormatException; {:try_start_cc .. :try_end_117} :catch_117

    .line 1220
    .end local v0    # "degrees":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "deg":I
    .end local v10    # "sec":D
    .end local v12    # "secPresent":Z
    .end local v13    # "min":D
    .end local v16    # "isNegative180":Z
    .restart local v1    # "coordinate":Ljava/lang/String;
    .restart local v6    # "tokens":I
    .restart local v15    # "negative":Z
    .restart local p0    # "st":Ljava/util/StringTokenizer;
    :catch_117
    move-exception v0

    goto :goto_11d

    .end local v15    # "negative":Z
    .end local p0    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "negative":Z
    .local v4, "st":Ljava/util/StringTokenizer;
    :catch_119
    move-exception v0

    move v15, v3

    move-object/from16 p0, v4

    .line 1221
    .end local v3    # "negative":Z
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "negative":Z
    .restart local p0    # "st":Ljava/util/StringTokenizer;
    :goto_11d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1175
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "negative":Z
    .end local p0    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "negative":Z
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :cond_134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convert(DI)Ljava/lang/String;
    .registers 12
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .line 1123
    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "coordinate"

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 1124
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1b

    if-eq p2, v1, :cond_1b

    if-ne p2, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v2, v1

    .line 1125
    :goto_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1124
    const-string v4, "%d is an unrecognized format"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_3a

    .line 1130
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1131
    neg-double p0, p0

    .line 1134
    :cond_3a
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v3, "df":Ljava/text/DecimalFormat;
    if-eq p2, v1, :cond_45

    if-ne p2, v0, :cond_67

    .line 1136
    :cond_45
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1137
    .local v1, "degrees":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1138
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    int-to-double v5, v1

    sub-double/2addr p0, v5

    .line 1140
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v5

    .line 1141
    if-ne p2, v0, :cond_67

    .line 1142
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v0, v7

    .line 1143
    .local v0, "minutes":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    int-to-double v7, v0

    sub-double/2addr p0, v7

    .line 1146
    mul-double/2addr p0, v5

    .line 1149
    .end local v0    # "minutes":I
    .end local v1    # "degrees":I
    :cond_67
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static distanceBetween(DDDD[F)V
    .registers 21
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .line 1337
    move-object/from16 v0, p8

    if-eqz v0, :cond_2f

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2f

    .line 1340
    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location$BearingDistanceCache;

    .line 1341
    .local v1, "cache":Landroid/location/Location$BearingDistanceCache;
    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object v11, v1

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 1343
    const/4 v3, 0x0

    iget v4, v1, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    aput v4, v0, v3

    .line 1344
    array-length v3, v0

    if-le v3, v2, :cond_2e

    .line 1345
    iget v3, v1, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    aput v3, v0, v2

    .line 1346
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_2e

    .line 1347
    iget v2, v1, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    aput v2, v0, v3

    .line 1350
    :cond_2e
    return-void

    .line 1338
    .end local v1    # "cache":Landroid/location/Location$BearingDistanceCache;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "results is null or has length < 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .registers 12
    .param p1, "dest"    # Landroid/location/Location;

    .line 229
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 231
    .local v0, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_34

    .line 233
    :cond_28
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 236
    :cond_34
    iget v1, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return v1
.end method

.method public describeContents()I
    .registers 2

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .registers 12
    .param p1, "dest"    # Landroid/location/Location;

    .line 209
    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location$BearingDistanceCache;

    .line 211
    .local v0, "cache":Landroid/location/Location$BearingDistanceCache;
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_28

    iget-wide v1, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_34

    .line 213
    :cond_28
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    .line 216
    :cond_34
    iget v1, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 894
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 895
    return v0

    .line 897
    :cond_4
    instance-of v1, p1, Landroid/location/Location;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 898
    return v2

    .line 901
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/Location;

    .line 902
    .local v1, "location":Landroid/location/Location;
    iget-wide v3, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v5, v1, Landroid/location/Location;->mTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14a

    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v5, v1, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14a

    .line 904
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    .line 905
    invoke-virtual {v1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 906
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_37

    iget-wide v3, v1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_14a

    :cond_37
    iget-wide v3, v1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 908
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_14a

    iget-wide v3, v1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 909
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_14a

    .line 910
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 911
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_65

    iget-wide v3, v1, Landroid/location/Location;->mAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_14a

    .line 913
    :cond_65
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 914
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_7f

    iget v3, v1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v4, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 916
    :cond_7f
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 917
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_99

    iget v3, v1, Landroid/location/Location;->mBearingDegrees:F

    iget v4, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 918
    :cond_99
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 919
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_b3

    iget v3, v1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 921
    :cond_b3
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 922
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-eqz v3, :cond_cd

    iget v3, v1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 924
    :cond_cd
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 925
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-eqz v3, :cond_e7

    iget v3, v1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v4, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 927
    :cond_e7
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 928
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-eqz v3, :cond_101

    iget v3, v1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v4, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    .line 930
    :cond_101
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 931
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    if-eqz v3, :cond_11b

    iget-wide v3, v1, Landroid/location/Location;->mMslAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_14a

    .line 934
    :cond_11b
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    invoke-virtual {v1}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v4

    if-ne v3, v4, :cond_14a

    .line 935
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    if-eqz v3, :cond_135

    iget v3, v1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget v4, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_14a

    :cond_135
    iget-object v3, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 938
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14a

    iget-object v3, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iget-object v4, v1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 939
    invoke-static {v3, v4}, Landroid/location/Location;->areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_14a

    goto :goto_14b

    :cond_14a
    move v0, v2

    .line 902
    :goto_14b
    return v0
.end method

.method public getAccuracy()F
    .registers 2

    .line 447
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .line 482
    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    .line 632
    iget v0, p0, Landroid/location/Location;->mBearingDegrees:F

    return v0
.end method

.method public getBearingAccuracyDegrees()F
    .registers 2

    .line 682
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return v0
.end method

.method public getElapsedRealtimeAgeMillis()J
    .registers 3

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedRealtimeAgeMillis(J)J
    .registers 5
    .param p1, "referenceRealtimeMs"    # J

    .line 342
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public getElapsedRealtimeMillis()J
    .registers 4

    .line 320
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    .line 310
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-wide v0
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .registers 3

    .line 365
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 840
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .line 402
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 421
    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public getMslAltitudeAccuracyMeters()F
    .registers 3

    .line 750
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v0

    const-string v1, "The Mean Sea Level altitude accuracy of this location is not set."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 752
    iget v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return v0
.end method

.method public getMslAltitudeMeters()D
    .registers 3

    .line 715
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v0

    const-string v1, "The Mean Sea Level altitude of this location is not set."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 717
    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .line 245
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    .line 557
    iget v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return v0
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .registers 2

    .line 594
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    return-wide v0
.end method

.method public getVerticalAccuracyMeters()F
    .registers 2

    .line 519
    iget v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return v0
.end method

.method public hasAccuracy()Z
    .registers 2

    .line 464
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasAltitude()Z
    .registers 3

    .line 499
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasBearing()Z
    .registers 2

    .line 662
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasBearingAccuracy()Z
    .registers 2

    .line 699
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .registers 2

    .line 385
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMslAltitude()Z
    .registers 2

    .line 732
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMslAltitudeAccuracy()Z
    .registers 2

    .line 768
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    .line 574
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSpeedAccuracy()Z
    .registers 2

    .line 612
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasVerticalAccuracy()Z
    .registers 2

    .line 536
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 954
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isComplete()Z
    .registers 5

    .line 861
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isFromMockProvider()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v0

    return v0
.end method

.method public isMock()Z
    .registers 2

    .line 812
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public makeComplete()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 871
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 872
    const-string v0, ""

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 874
    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_18

    .line 875
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 876
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 878
    :cond_18
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    .line 881
    :cond_26
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 884
    :cond_32
    return-void
.end method

.method public removeAccuracy()V
    .registers 2

    .line 471
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 472
    return-void
.end method

.method public removeAltitude()V
    .registers 2

    .line 506
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 507
    return-void
.end method

.method public removeBearing()V
    .registers 2

    .line 669
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 670
    return-void
.end method

.method public removeBearingAccuracy()V
    .registers 2

    .line 706
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 707
    return-void
.end method

.method public removeElapsedRealtimeUncertaintyNanos()V
    .registers 2

    .line 392
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 393
    return-void
.end method

.method public removeMslAltitude()V
    .registers 2

    .line 739
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 740
    return-void
.end method

.method public removeMslAltitudeAccuracy()V
    .registers 2

    .line 775
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 776
    return-void
.end method

.method public removeSpeed()V
    .registers 2

    .line 581
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 582
    return-void
.end method

.method public removeSpeedAccuracy()V
    .registers 2

    .line 619
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 620
    return-void
.end method

.method public removeVerticalAccuracy()V
    .registers 2

    .line 543
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 544
    return-void
.end method

.method public reset()V
    .registers 5

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 183
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTimeMs:J

    .line 184
    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 185
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 186
    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mFieldsMask:I

    .line 187
    iput-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 188
    iput-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 189
    iput-wide v1, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 190
    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 191
    iput v3, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 192
    iput v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 193
    iput v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 194
    iput v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 195
    iput v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 196
    iput-wide v1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 197
    iput v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 198
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 199
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .line 158
    iget v0, p1, Landroid/location/Location;->mFieldsMask:I

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 159
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 160
    iget-wide v0, p1, Landroid/location/Location;->mTimeMs:J

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    .line 161
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 162
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 163
    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 164
    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 165
    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 166
    iget-wide v0, p1, Landroid/location/Location;->mAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 167
    iget v0, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 168
    iget v0, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 169
    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 170
    iget v0, p1, Landroid/location/Location;->mBearingDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 171
    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 172
    iget-wide v0, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 173
    iget v0, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 174
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_46

    const/4 v0, 0x0

    goto :goto_4d

    :cond_46
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_4d
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 175
    return-void
.end method

.method public setAccuracy(F)V
    .registers 3
    .param p1, "horizontalAccuracyMeters"    # F

    .line 456
    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    .line 457
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 458
    return-void
.end method

.method public setAltitude(D)V
    .registers 4
    .param p1, "altitudeMeters"    # D

    .line 491
    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    .line 492
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 493
    return-void
.end method

.method public setBearing(F)V
    .registers 5
    .param p1, "bearingDegrees"    # F

    .line 646
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 650
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v1, p1, v0

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 651
    .local v1, "modBearing":F
    cmpg-float v2, v1, v2

    if-gez v2, :cond_12

    .line 652
    add-float/2addr v1, v0

    .line 654
    :cond_12
    iput v1, p0, Landroid/location/Location;->mBearingDegrees:F

    .line 655
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 656
    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .registers 3
    .param p1, "bearingAccuracyDegrees"    # F

    .line 691
    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    .line 692
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 693
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .registers 3
    .param p1, "elapsedRealtimeNs"    # J

    .line 351
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    .line 352
    return-void
.end method

.method public setElapsedRealtimeUncertaintyNanos(D)V
    .registers 4
    .param p1, "elapsedRealtimeUncertaintyNs"    # D

    .line 377
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    .line 378
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 379
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 850
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_9
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 851
    return-void
.end method

.method public setIsFromMockProvider(Z)V
    .registers 2
    .param p1, "isFromMockProvider"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    invoke-virtual {p0, p1}, Landroid/location/Location;->setMock(Z)V

    .line 802
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .param p1, "latitudeDegrees"    # D

    .line 411
    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    .line 412
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .param p1, "longitudeDegrees"    # D

    .line 430
    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 431
    return-void
.end method

.method public setMock(Z)V
    .registers 3
    .param p1, "mock"    # Z

    .line 819
    if-eqz p1, :cond_9

    .line 820
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    goto :goto_f

    .line 822
    :cond_9
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 824
    :goto_f
    return-void
.end method

.method public setMslAltitudeAccuracyMeters(F)V
    .registers 3
    .param p1, "mslAltitudeAccuracyMeters"    # F

    .line 760
    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    .line 761
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 762
    return-void
.end method

.method public setMslAltitudeMeters(D)V
    .registers 4
    .param p1, "mslAltitudeMeters"    # D

    .line 724
    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    .line 725
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 726
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 254
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setSpeed(F)V
    .registers 3
    .param p1, "speedMetersPerSecond"    # F

    .line 566
    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    .line 567
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 568
    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .registers 3
    .param p1, "speedAccuracyMeterPerSecond"    # F

    .line 604
    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    .line 605
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 606
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .param p1, "timeMs"    # J

    .line 292
    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    .line 293
    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .registers 3
    .param p1, "altitudeAccuracyMeters"    # F

    .line 528
    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    .line 529
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    .line 530
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v3, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, p0, Landroid/location/Location;->mLongitudeDegrees:D

    .line 963
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 962
    const-string v4, "%.6f,%.6f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 965
    const-string v1, " hAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 967
    :cond_41
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 969
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 970
    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 972
    const-string v1, " vAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 975
    :cond_6f
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 976
    const-string v1, " mslAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 978
    const-string v1, " mslAltAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 981
    :cond_91
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 982
    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 984
    const-string v1, " sAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 987
    :cond_b3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 988
    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 990
    const-string v1, " bAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 993
    :cond_d5
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 994
    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_e0
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_fb

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fb

    .line 998
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    :cond_fb
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1072
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1073
    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1075
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1076
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1077
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1079
    :cond_1f
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1080
    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1081
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1082
    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1084
    :cond_34
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1085
    iget v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1087
    :cond_3f
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1088
    iget v0, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1090
    :cond_4a
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1091
    iget v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1093
    :cond_55
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1094
    iget v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1096
    :cond_60
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1097
    iget v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1099
    :cond_6b
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1100
    iget v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1102
    :cond_76
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1103
    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1105
    :cond_81
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1106
    iget v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1108
    :cond_8c
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1109
    return-void
.end method
