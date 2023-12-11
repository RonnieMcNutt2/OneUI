.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ImageFormat$Format;
    }
.end annotation


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_JPEG:I = 0x69656963

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final HEIC:I = 0x48454946

.field public static final JPEG:I = 0x100

.field public static final JPEG_R:I = 0x1005

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_DEPTH10:I = 0x1003

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YCBCR_P010:I = 0x36

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .registers 4
    .param p0, "format"    # I

    .line 821
    const/16 v0, 0x18

    const/16 v1, 0xc

    const/16 v2, 0x10

    sparse-switch p0, :sswitch_data_22

    .line 858
    const/4 v0, -0x1

    return v0

    .line 829
    :sswitch_b
    return v1

    .line 834
    :sswitch_c
    return v2

    .line 831
    :sswitch_d
    const/16 v0, 0x8

    return v0

    .line 851
    :sswitch_10
    return v0

    .line 846
    :sswitch_11
    const/16 v0, 0x20

    return v0

    .line 844
    :sswitch_14
    return v0

    .line 842
    :sswitch_15
    return v0

    .line 840
    :sswitch_16
    return v2

    .line 856
    :sswitch_17
    return v1

    .line 854
    :sswitch_18
    const/16 v0, 0xa

    return v0

    .line 838
    :sswitch_1b
    return v1

    .line 849
    :sswitch_1c
    return v2

    .line 827
    :sswitch_1d
    return v2

    .line 836
    :sswitch_1e
    return v1

    .line 825
    :sswitch_1f
    return v2

    .line 823
    :sswitch_20
    return v2

    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_20
        0x10 -> :sswitch_1f
        0x11 -> :sswitch_1e
        0x14 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x23 -> :sswitch_1b
        0x25 -> :sswitch_18
        0x26 -> :sswitch_17
        0x27 -> :sswitch_16
        0x28 -> :sswitch_15
        0x29 -> :sswitch_14
        0x2a -> :sswitch_11
        0x36 -> :sswitch_10
        0x1002 -> :sswitch_1c
        0x1003 -> :sswitch_18
        0x20203859 -> :sswitch_d
        0x20363159 -> :sswitch_c
        0x32315659 -> :sswitch_b
        0x44363159 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .registers 2
    .param p0, "format"    # I

    .line 874
    sparse-switch p0, :sswitch_data_8

    .line 903
    const/4 v0, 0x0

    return v0

    .line 900
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x4 -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x14 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x25 -> :sswitch_5
        0x26 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x36 -> :sswitch_5
        0x100 -> :sswitch_5
        0x101 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x1003 -> :sswitch_5
        0x1005 -> :sswitch_5
        0x20203859 -> :sswitch_5
        0x32315659 -> :sswitch_5
        0x44363159 -> :sswitch_5
        0x48454946 -> :sswitch_5
        0x69656963 -> :sswitch_5
    .end sparse-switch
.end method
