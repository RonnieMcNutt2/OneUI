.class public Landroid/telephony/TelephonyManager$CallComposerException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$CallComposerException$CallComposerError;
    }
.end annotation


# static fields
.field public static final ERROR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERROR_FILE_TOO_LARGE:I = 0x2

.field public static final ERROR_INPUT_CLOSED:I = 0x4

.field public static final ERROR_IO_EXCEPTION:I = 0x5

.field public static final ERROR_NETWORK_UNAVAILABLE:I = 0x6

.field public static final ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final SUCCESS:I = -0x1


# instance fields
.field private final mErrorCode:I

.field private final mIOException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(ILjava/io/IOException;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "ioException"    # Ljava/io/IOException;

    .line 5542
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 5543
    iput p1, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mErrorCode:I

    .line 5544
    iput-object p2, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mIOException:Ljava/io/IOException;

    .line 5545
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 5552
    iget v0, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mErrorCode:I

    return v0
.end method

.method public getIOException()Ljava/io/IOException;
    .registers 2

    .line 5561
    iget-object v0, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mIOException:Ljava/io/IOException;

    return-object v0
.end method
