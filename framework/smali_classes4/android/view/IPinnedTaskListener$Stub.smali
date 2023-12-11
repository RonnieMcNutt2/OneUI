.class public abstract Landroid/view/IPinnedTaskListener$Stub;
.super Landroid/os/Binder;
.source "IPinnedTaskListener.java"

# interfaces
.implements Landroid/view/IPinnedTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onActivityHidden:I = 0x3

.field static final TRANSACTION_onImeVisibilityChanged:I = 0x2

.field static final TRANSACTION_onMovementBoundsChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.view.IPinnedTaskListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPinnedTaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "android.view.IPinnedTaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IPinnedTaskListener;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/view/IPinnedTaskListener;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/view/IPinnedTaskListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IPinnedTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 75
    packed-switch p0, :pswitch_data_12

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string/jumbo v0, "onActivityHidden"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "onImeVisibilityChanged"

    return-object v0

    .line 79
    :pswitch_d
    const-string/jumbo v0, "onMovementBoundsChanged"

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

    .line 70
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 224
    const/4 v0, 0x2

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/view/IPinnedTaskListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const-string v0, "android.view.IPinnedTaskListener"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    packed-switch p1, :pswitch_data_46

    .line 114
    packed-switch p1, :pswitch_data_4c

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 110
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v1

    .line 137
    :pswitch_1c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 138
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2}, Landroid/view/IPinnedTaskListener$Stub;->onActivityHidden(Landroid/content/ComponentName;)V

    .line 140
    goto :goto_45

    .line 127
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 129
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/view/IPinnedTaskListener$Stub;->onImeVisibilityChanged(ZI)V

    .line 132
    goto :goto_45

    .line 119
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 120
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/view/IPinnedTaskListener$Stub;->onMovementBoundsChanged(Z)V

    .line 122
    nop

    .line 147
    .end local v2    # "_arg0":Z
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
