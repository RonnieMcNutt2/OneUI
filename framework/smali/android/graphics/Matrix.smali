.class public Landroid/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Matrix$NoImagePreloadHolder;,
        Landroid/graphics/Matrix$ScaleToFit;
    }
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field public static final MPERSP_0:I = 0x6

.field public static final MPERSP_1:I = 0x7

.field public static final MPERSP_2:I = 0x8

.field public static final MSCALE_X:I = 0x0

.field public static final MSCALE_Y:I = 0x4

.field public static final MSKEW_X:I = 0x1

.field public static final MSKEW_Y:I = 0x3

.field public static final MTRANS_X:I = 0x2

.field public static final MTRANS_Y:I = 0x5


# instance fields
.field private final native_instance:J


# direct methods
.method static bridge synthetic -$$Nest$smnGetNativeFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Matrix;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Landroid/graphics/Matrix$1;

    invoke-direct {v0}, Landroid/graphics/Matrix$1;-><init>()V

    sput-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 242
    sget-object v2, Landroid/graphics/Matrix$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    if-eqz p1, :cond_8

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nCreate(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    .line 252
    sget-object v2, Landroid/graphics/Matrix$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 253
    return-void
.end method

.method private static checkPointArrays([FI[FII)V
    .registers 8
    .param p0, "src"    # [F
    .param p1, "srcIndex"    # I
    .param p2, "dst"    # [F
    .param p3, "dstIndex"    # I
    .param p4, "pointCount"    # I

    .line 581
    shl-int/lit8 v0, p4, 0x1

    add-int/2addr v0, p1

    .line 582
    .local v0, "srcStop":I
    shl-int/lit8 v1, p4, 0x1

    add-int/2addr v1, p3

    .line 583
    .local v1, "dstStop":I
    or-int v2, p4, p1

    or-int/2addr v2, p3

    or-int/2addr v2, v0

    or-int/2addr v2, v1

    if-ltz v2, :cond_14

    array-length v2, p0

    if-gt v0, v2, :cond_14

    array-length v2, p2

    if-gt v1, v2, :cond_14

    .line 587
    return-void

    .line 585
    :cond_14
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private static native nCreate(J)J
.end method

.method private static native nEquals(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetValues(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nInvert(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsAffine(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsIdentity(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nMapPoints(J[FI[FIIZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nMapRadius(JF)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nMapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nPostConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPostTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreConcat(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nPreTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRectStaysRect(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetConcat(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPolyToPoly(J[FI[FII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetRotate(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRotate(JFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetScale(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetScale(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSinCos(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSinCos(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSkew(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSkew(JFFFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTranslate(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetValues(J[F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private toShortString(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 786
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 787
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 788
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 790
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 794
    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 806
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 817
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 818
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 819
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 820
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 821
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 823
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 825
    const-string v2, "]["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 827
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 829
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 831
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 833
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 835
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const/16 v1, 0x8

    aget v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 837
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 839
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 298
    instance-of v0, p1, Landroid/graphics/Matrix;

    if-nez v0, :cond_6

    .line 299
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move-object v2, p1

    check-cast v2, Landroid/graphics/Matrix;

    iget-wide v2, v2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nEquals(JJ)Z

    move-result v0

    return v0
.end method

.method public getValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .line 751
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 754
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nGetValues(J[F)V

    .line 755
    return-void

    .line 752
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 310
    const/16 v0, 0x2c

    return v0
.end method

.method public invert(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "inverse"    # Landroid/graphics/Matrix;

    .line 617
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nInvert(JJ)Z

    move-result v0

    return v0
.end method

.method public isAffine()Z
    .registers 3

    .line 269
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nIsAffine(J)Z

    move-result v0

    return v0
.end method

.method public isIdentity()Z
    .registers 3

    .line 259
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nIsIdentity(J)Z

    move-result v0

    return v0
.end method

.method public mapPoints([F)V
    .registers 8
    .param p1, "pts"    # [F

    .line 697
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 698
    return-void
.end method

.method public mapPoints([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "pointCount"    # I

    .line 633
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 634
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->nMapPoints(J[FI[FIIZ)V

    .line 636
    return-void
.end method

.method public mapPoints([F[F)V
    .registers 11
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .line 667
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_10

    .line 670
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v0, p1

    shr-int/lit8 v7, v0, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 671
    return-void

    .line 668
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public mapRadius(F)F
    .registers 4
    .param p1, "radius"    # F

    .line 744
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nMapRadius(JF)F

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .line 736
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "dst"    # Landroid/graphics/RectF;
    .param p2, "src"    # Landroid/graphics/RectF;

    .line 721
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 724
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nMapRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    return v0

    .line 722
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public mapVectors([F)V
    .registers 8
    .param p1, "vecs"    # [F

    .line 708
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v0, p1

    shr-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 709
    return-void
.end method

.method public mapVectors([FI[FII)V
    .registers 14
    .param p1, "dst"    # [F
    .param p2, "dstIndex"    # I
    .param p3, "src"    # [F
    .param p4, "srcIndex"    # I
    .param p5, "vectorCount"    # I

    .line 653
    invoke-static {p3, p4, p1, p2, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 654
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Matrix;->nMapPoints(J[FI[FIIZ)V

    .line 656
    return-void
.end method

.method public mapVectors([F[F)V
    .registers 11
    .param p1, "dst"    # [F
    .param p2, "src"    # [F

    .line 684
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_10

    .line 687
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v0, p1

    shr-int/lit8 v7, v0, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapVectors([FI[FII)V

    .line 688
    return-void

    .line 685
    :cond_10
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final ni()J
    .registers 3

    .line 846
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    return-wide v0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 520
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nPostConcat(JJ)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public postRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .line 496
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nPostRotate(JF)V

    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public postRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 488
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nPostRotate(JFFF)V

    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method public postScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 480
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostScale(JFF)V

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public postScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 472
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPostScale(JFFFF)V

    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method public postSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 512
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostSkew(JFF)V

    .line 513
    const/4 v0, 0x1

    return v0
.end method

.method public postSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 504
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPostSkew(JFFFF)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public postTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 464
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPostTranslate(JFF)V

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .registers 6
    .param p1, "other"    # Landroid/graphics/Matrix;

    .line 456
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nPreConcat(JJ)V

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public preRotate(F)Z
    .registers 4
    .param p1, "degrees"    # F

    .line 432
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nPreRotate(JF)V

    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public preRotate(FFF)Z
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 424
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nPreRotate(JFFF)V

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public preScale(FF)Z
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 416
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreScale(JFF)V

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public preScale(FFFF)Z
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 408
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPreScale(JFFFF)V

    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public preSkew(FF)Z
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 448
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreSkew(JFF)V

    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public preSkew(FFFF)Z
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 440
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nPreSkew(JFFFF)V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public preTranslate(FF)Z
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 400
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nPreTranslate(JFF)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public rectStaysRect()Z
    .registers 3

    .line 277
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nRectStaysRect(J)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 3

    .line 315
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Matrix;->nReset(J)V

    .line 316
    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .registers 6
    .param p1, "src"    # Landroid/graphics/Matrix;

    .line 285
    if-nez p1, :cond_6

    .line 286
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_d

    .line 288
    :cond_6
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Matrix;->nSet(JJ)V

    .line 290
    :goto_d
    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 9
    .param p1, "a"    # Landroid/graphics/Matrix;
    .param p2, "b"    # Landroid/graphics/Matrix;

    .line 392
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetConcat(JJJ)V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public setPolyToPoly([FI[FII)Z
    .registers 14
    .param p1, "src"    # [F
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [F
    .param p4, "dstIndex"    # I
    .param p5, "pointCount"    # I

    .line 604
    const/4 v0, 0x4

    if-gt p5, v0, :cond_12

    .line 607
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Matrix;->checkPointArrays([FI[FII)V

    .line 608
    iget-wide v1, p0, Landroid/graphics/Matrix;->native_instance:J

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Matrix;->nSetPolyToPoly(J[FI[FII)Z

    move-result v0

    return v0

    .line 605
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 7
    .param p1, "src"    # Landroid/graphics/RectF;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 570
    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 573
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    iget v2, p3, Landroid/graphics/Matrix$ScaleToFit;->nativeInt:I

    invoke-static {v0, v1, p1, p2, v2}, Landroid/graphics/Matrix;->nSetRectToRect(JLandroid/graphics/RectF;Landroid/graphics/RectF;I)Z

    move-result v0

    return v0

    .line 571
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRotate(F)V
    .registers 4
    .param p1, "degrees"    # F

    .line 349
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nSetRotate(JF)V

    .line 350
    return-void
.end method

.method public setRotate(FFF)V
    .registers 6
    .param p1, "degrees"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .line 342
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Matrix;->nSetRotate(JFFF)V

    .line 343
    return-void
.end method

.method public setScale(FF)V
    .registers 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .line 333
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetScale(JFF)V

    .line 334
    return-void
.end method

.method public setScale(FFFF)V
    .registers 11
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 328
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetScale(JFFFF)V

    .line 329
    return-void
.end method

.method public setSinCos(FF)V
    .registers 5
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F

    .line 363
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetSinCos(JFF)V

    .line 364
    return-void
.end method

.method public setSinCos(FFFF)V
    .registers 11
    .param p1, "sinValue"    # F
    .param p2, "cosValue"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 358
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetSinCos(JFFFF)V

    .line 359
    return-void
.end method

.method public setSkew(FF)V
    .registers 5
    .param p1, "kx"    # F
    .param p2, "ky"    # F

    .line 376
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetSkew(JFF)V

    .line 377
    return-void
.end method

.method public setSkew(FFFF)V
    .registers 11
    .param p1, "kx"    # F
    .param p2, "ky"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .line 371
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Matrix;->nSetSkew(JFFFF)V

    .line 372
    return-void
.end method

.method public setTranslate(FF)V
    .registers 5
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 320
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Matrix;->nSetTranslate(JFF)V

    .line 321
    return-void
.end method

.method public setValues([F)V
    .registers 4
    .param p1, "values"    # [F

    .line 763
    array-length v0, p1

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    .line 766
    iget-wide v0, p0, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Matrix;->nSetValues(J[F)V

    .line 767
    return-void

    .line 764
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 781
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 782
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 772
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Matrix{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-direct {p0, v0}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 774
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
