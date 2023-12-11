.class public final Landroid/media/MediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$KeyStatus$KeyStatusCode;
    }
.end annotation


# static fields
.field public static final STATUS_EXPIRED:I = 0x1

.field public static final STATUS_INTERNAL_ERROR:I = 0x4

.field public static final STATUS_OUTPUT_NOT_ALLOWED:I = 0x2

.field public static final STATUS_PENDING:I = 0x3

.field public static final STATUS_USABLE:I = 0x0

.field public static final STATUS_USABLE_IN_FUTURE:I = 0x5


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method constructor <init>([BI)V
    .registers 3
    .param p1, "keyId"    # [B
    .param p2, "statusCode"    # I

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1078
    iput-object p1, p0, Landroid/media/MediaDrm$KeyStatus;->mKeyId:[B

    .line 1079
    iput p2, p0, Landroid/media/MediaDrm$KeyStatus;->mStatusCode:I

    .line 1080
    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .registers 2

    .line 1092
    iget-object v0, p0, Landroid/media/MediaDrm$KeyStatus;->mKeyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1086
    iget v0, p0, Landroid/media/MediaDrm$KeyStatus;->mStatusCode:I

    return v0
.end method
