.class public Landroid/telephony/TelephonyManager$NetworkSlicingException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSlicingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$NetworkSlicingException$NetworkSlicingError;
    }
.end annotation


# static fields
.field public static final ERROR_MODEM_ERROR:I = 0x2

.field public static final ERROR_TIMEOUT:I = 0x1

.field public static final SUCCESS:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 18881
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 18882
    iput p1, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    .line 18883
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 18887
    iget v0, p0, Landroid/telephony/TelephonyManager$NetworkSlicingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_e

    .line 18890
    const-string v0, "UNDEFINED"

    return-object v0

    .line 18889
    :pswitch_8
    const-string v0, "ERROR_MODEM_ERROR"

    return-object v0

    .line 18888
    :pswitch_b
    const-string v0, "ERROR_TIMEOUT"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
