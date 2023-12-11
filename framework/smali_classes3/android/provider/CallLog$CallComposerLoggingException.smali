.class public Landroid/provider/CallLog$CallComposerLoggingException;
.super Ljava/lang/Throwable;
.source "CallLog.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerLoggingException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$CallComposerLoggingException$CallComposerLoggingError;
    }
.end annotation


# static fields
.field public static final ERROR_INPUT_CLOSED:I = 0x3

.field public static final ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final ERROR_STORAGE_FULL:I = 0x2

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 154
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 155
    iput p1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    .line 156
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 168
    iget v0, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    packed-switch v0, :pswitch_data_42

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/provider/CallLog$CallComposerLoggingException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "errorString":Ljava/lang/String;
    goto :goto_2d

    .line 179
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_21
    const-string v0, "INPUT_CLOSED"

    .line 180
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_2d

    .line 176
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_24
    const-string v0, "STORAGE_FULL"

    .line 177
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_2d

    .line 173
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_27
    const-string v0, "REMOTE_END_CLOSED"

    .line 174
    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_2d

    .line 170
    .end local v0    # "errorString":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "UNKNOWN"

    .line 171
    .restart local v0    # "errorString":Ljava/lang/String;
    nop

    .line 185
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallComposerLoggingException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
    .end packed-switch
.end method
