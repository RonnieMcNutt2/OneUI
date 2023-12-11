.class public abstract Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionCallback.java"

# interfaces
.implements Lcom/samsung/android/gesture/IMotionRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/IMotionRecognitionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getListenerInfo:I = 0x2

.field static final TRANSACTION_getListenerPackageName:I = 0x3

.field static final TRANSACTION_motionCallback:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gesture/IMotionRecognitionCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_12

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_5
    const-string/jumbo v0, "getListenerPackageName"

    return-object v0

    .line 66
    :pswitch_9
    const-string/jumbo v0, "getListenerInfo"

    return-object v0

    .line 62
    :pswitch_d
    const-string/jumbo v0, "motionCallback"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionCallback"

    .line 86
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_d
    packed-switch p1, :pswitch_data_46

    .line 97
    packed-switch p1, :pswitch_data_4c

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 117
    :pswitch_1c
    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->getListenerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    goto :goto_44

    .line 110
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_27
    invoke-virtual {p0}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->getListenerInfo()Ljava/lang/String;

    move-result-object v2

    .line 111
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    goto :goto_44

    .line 102
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_32
    sget-object v2, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .line 103
    .local v2, "_arg0":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/samsung/android/gesture/IMotionRecognitionCallback$Stub;->motionCallback(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    nop

    .line 127
    .end local v2    # "_arg0":Lcom/samsung/android/gesture/SemMotionRecognitionEvent;
    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
