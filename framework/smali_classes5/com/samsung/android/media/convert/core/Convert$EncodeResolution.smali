.class public final Lcom/samsung/android/media/convert/core/Convert$EncodeResolution;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncodeResolution"
.end annotation


# static fields
.field public static final D1:I = 0x4

.field public static final FULL_HD:I = 0x6

.field public static final HD:I = 0x5

.field public static final QCIF:I = 0x1

.field public static final QHD:I = 0x7

.field public static final QVGA:I = 0x2

.field public static final UHD:I = 0x8

.field public static final VGA:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportedResolution(I)Z
    .registers 3
    .param p0, "resolution"    # I

    .line 223
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v1, 0x8

    if-gt p0, v1, :cond_8

    .line 224
    return v0

    .line 225
    :cond_8
    const/4 v0, 0x0

    return v0
.end method
