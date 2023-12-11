.class public abstract Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;
.super Landroid/os/Binder;
.source "IVisualQueryDetectionAttentionListener.java"

# interfaces
.implements Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAttentionGained:I = 0x1

.field static final TRANSACTION_onAttentionLost:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.internal.app.IVisualQueryDetectionAttentionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.android.internal.app.IVisualQueryDetectionAttentionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_e

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 65
    :pswitch_5
    const-string/jumbo v0, "onAttentionLost"

    return-object v0

    .line 61
    :pswitch_9
    const-string/jumbo v0, "onAttentionGained"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 76
    invoke-static {p1}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    const-string v0, "com.android.internal.app.IVisualQueryDetectionAttentionListener"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_d
    packed-switch p1, :pswitch_data_26

    .line 92
    packed-switch p1, :pswitch_data_2c

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 88
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 101
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->onAttentionLost()V

    .line 102
    goto :goto_24

    .line 96
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;->onAttentionGained()V

    .line 97
    nop

    .line 109
    :goto_24
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method
