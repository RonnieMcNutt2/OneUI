.class public final Landroid/media/MediaDrm$SessionException;
.super Ljava/lang/RuntimeException;
.source "MediaDrm.java"

# interfaces
.implements Landroid/media/MediaDrmThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$SessionException$SessionErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_RESOURCE_CONTENTION:I = 0x1

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I

.field private final mErrorContext:I

.field private final mOemError:I

.field private final mVendorError:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .line 760
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaDrm$SessionException;-><init>(Ljava/lang/String;IIII)V

    .line 761
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "vendorError"    # I
    .param p4, "oemError"    # I
    .param p5, "errorContext"    # I

    .line 768
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 769
    iput p2, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    .line 770
    iput p3, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    .line 771
    iput p4, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    .line 772
    iput p5, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    .line 773
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 808
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    return v0
.end method

.method public getErrorContext()I
    .registers 2

    .line 823
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorContext:I

    return v0
.end method

.method public getOemError()I
    .registers 2

    .line 818
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mOemError:I

    return v0
.end method

.method public getVendorError()I
    .registers 2

    .line 813
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mVendorError:I

    return v0
.end method

.method public isTransient()Z
    .registers 3

    .line 833
    iget v0, p0, Landroid/media/MediaDrm$SessionException;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
