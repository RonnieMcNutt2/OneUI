.class public final Landroid/media/MediaCodec$CryptoException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoException$CryptoErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_FRAME_TOO_LARGE:I = 0x8

.field public static final ERROR_INSUFFICIENT_OUTPUT_PROTECTION:I = 0x4

.field public static final ERROR_INSUFFICIENT_SECURITY:I = 0x7

.field public static final ERROR_KEY_EXPIRED:I = 0x2

.field public static final ERROR_LOST_STATE:I = 0x9

.field public static final ERROR_NO_KEY:I = 0x1

.field public static final ERROR_RESOURCE_BUSY:I = 0x3

.field public static final ERROR_SESSION_NOT_OPENED:I = 0x5

.field public static final ERROR_UNSUPPORTED_OPERATION:I = 0x6


# instance fields
.field private mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field private final mErrorCode:I

.field private final mErrorContext:I

.field private final mOemError:I

.field private final mVendorError:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 10
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 2595
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoException;-><init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V

    .line 2596
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILandroid/media/MediaCodec$CryptoInfo;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "vendorError"    # I
    .param p4, "oemError"    # I
    .param p5, "errorContext"    # I
    .param p6, "cryptoInfo"    # Landroid/media/MediaCodec$CryptoInfo;

    .line 2603
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2604
    iput p2, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    .line 2605
    iput p3, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    .line 2606
    iput p4, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    .line 2607
    iput p5, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    .line 2608
    iput-object p6, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    .line 2609
    return-void
.end method


# virtual methods
.method public getCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .registers 2

    .line 2734
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoException;->mCryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 2724
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorCode:I

    return v0
.end method

.method public getErrorContext()I
    .registers 2

    .line 2749
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mErrorContext:I

    return v0
.end method

.method public getOemError()I
    .registers 2

    .line 2744
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mOemError:I

    return v0
.end method

.method public getVendorError()I
    .registers 2

    .line 2739
    iget v0, p0, Landroid/media/MediaCodec$CryptoException;->mVendorError:I

    return v0
.end method
