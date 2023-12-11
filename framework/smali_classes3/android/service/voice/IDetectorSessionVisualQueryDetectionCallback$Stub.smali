.class public abstract Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.super Landroid/os/Binder;
.source "IDetectorSessionVisualQueryDetectionCallback.java"

# interfaces
.implements Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAttentionGained:I = 0x1

.field static final TRANSACTION_onAttentionLost:I = 0x2

.field static final TRANSACTION_onQueryDetected:I = 0x3

.field static final TRANSACTION_onQueryFinished:I = 0x4

.field static final TRANSACTION_onQueryRejected:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_1a

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 93
    :pswitch_5
    const-string/jumbo v0, "onQueryRejected"

    return-object v0

    .line 89
    :pswitch_9
    const-string/jumbo v0, "onQueryFinished"

    return-object v0

    .line 85
    :pswitch_d
    const-string/jumbo v0, "onQueryDetected"

    return-object v0

    .line 81
    :pswitch_11
    const-string/jumbo v0, "onAttentionLost"

    return-object v0

    .line 77
    :pswitch_15
    const-string/jumbo v0, "onAttentionGained"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 68
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 242
    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "android.service.voice.IDetectorSessionVisualQueryDetectionCallback"

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
    packed-switch p1, :pswitch_data_38

    .line 120
    packed-switch p1, :pswitch_data_3e

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v1

    .line 147
    :pswitch_1c
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryRejected()V

    .line 148
    goto :goto_37

    .line 142
    :pswitch_20
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryFinished()V

    .line 143
    goto :goto_37

    .line 135
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, v2}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onQueryDetected(Ljava/lang/String;)V

    .line 138
    goto :goto_37

    .line 129
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onAttentionLost()V

    .line 130
    goto :goto_37

    .line 124
    :pswitch_33
    invoke-virtual {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;->onAttentionGained()V

    .line 125
    nop

    .line 155
    :goto_37
    return v1

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2f
        :pswitch_24
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
