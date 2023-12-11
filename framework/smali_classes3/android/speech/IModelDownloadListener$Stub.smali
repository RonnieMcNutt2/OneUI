.class public abstract Landroid/speech/IModelDownloadListener$Stub;
.super Landroid/os/Binder;
.source "IModelDownloadListener.java"

# interfaces
.implements Landroid/speech/IModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IModelDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IModelDownloadListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onProgress:I = 0x1

.field static final TRANSACTION_onScheduled:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.speech.IModelDownloadListener"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IModelDownloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IModelDownloadListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    const-string v0, "android.speech.IModelDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IModelDownloadListener;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/speech/IModelDownloadListener;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/speech/IModelDownloadListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IModelDownloadListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_16

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_5
    const-string/jumbo v0, "onError"

    return-object v0

    .line 89
    :pswitch_9
    const-string/jumbo v0, "onScheduled"

    return-object v0

    .line 85
    :pswitch_d
    const-string/jumbo v0, "onSuccess"

    return-object v0

    .line 81
    :pswitch_11
    const-string/jumbo v0, "onProgress"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 238
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/speech/IModelDownloadListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const-string v0, "android.speech.IModelDownloadListener"

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_d
    packed-switch p1, :pswitch_data_3c

    .line 120
    packed-switch p1, :pswitch_data_42

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 143
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2}, Landroid/speech/IModelDownloadListener$Stub;->onError(I)V

    .line 146
    goto :goto_3a

    .line 137
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p0}, Landroid/speech/IModelDownloadListener$Stub;->onScheduled()V

    .line 138
    goto :goto_3a

    .line 132
    :pswitch_2b
    invoke-virtual {p0}, Landroid/speech/IModelDownloadListener$Stub;->onSuccess()V

    .line 133
    goto :goto_3a

    .line 125
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/speech/IModelDownloadListener$Stub;->onProgress(I)V

    .line 128
    nop

    .line 153
    .end local v2    # "_arg0":I
    :goto_3a
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
