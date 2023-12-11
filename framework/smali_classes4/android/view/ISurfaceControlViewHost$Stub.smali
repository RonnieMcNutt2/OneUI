.class public abstract Landroid/view/ISurfaceControlViewHost$Stub;
.super Landroid/os/Binder;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISurfaceControlViewHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getSurfaceSyncGroup:I = 0x4

.field static final TRANSACTION_onConfigurationChanged:I = 0x1

.field static final TRANSACTION_onDispatchDetachedFromWindow:I = 0x2

.field static final TRANSACTION_onInsetsChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-virtual {p0, p0, v0}, Landroid/view/ISurfaceControlViewHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/ISurfaceControlViewHost;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_4
    const-string v0, "android.view.ISurfaceControlViewHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/ISurfaceControlViewHost;

    if-eqz v1, :cond_14

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/view/ISurfaceControlViewHost;

    return-object v1

    .line 57
    :cond_14
    new-instance v1, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/ISurfaceControlViewHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 66
    packed-switch p0, :pswitch_data_14

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 82
    :pswitch_5
    const-string v0, "getSurfaceSyncGroup"

    return-object v0

    .line 78
    :pswitch_8
    const-string/jumbo v0, "onInsetsChanged"

    return-object v0

    .line 74
    :pswitch_c
    const-string/jumbo v0, "onDispatchDetachedFromWindow"

    return-object v0

    .line 70
    :pswitch_10
    const-string/jumbo v0, "onConfigurationChanged"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 93
    invoke-static {p1}, Landroid/view/ISurfaceControlViewHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 97
    const-string v0, "android.view.ISurfaceControlViewHost"

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_d
    packed-switch p1, :pswitch_data_52

    .line 109
    packed-switch p1, :pswitch_data_58

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 136
    :pswitch_1c
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->getSurfaceSyncGroup()Landroid/window/ISurfaceSyncGroup;

    move-result-object v2

    .line 137
    .local v2, "_result":Landroid/window/ISurfaceSyncGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 139
    goto :goto_51

    .line 127
    .end local v2    # "_result":Landroid/window/ISurfaceSyncGroup;
    :pswitch_27
    sget-object v2, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsState;

    .line 129
    .local v2, "_arg0":Landroid/view/InsetsState;
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 130
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, v2, v3}, Landroid/view/ISurfaceControlViewHost$Stub;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    .line 132
    goto :goto_51

    .line 121
    .end local v2    # "_arg0":Landroid/view/InsetsState;
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/view/ISurfaceControlViewHost$Stub;->onDispatchDetachedFromWindow()V

    .line 122
    goto :goto_51

    .line 114
    :pswitch_42
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 115
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {p0, v2}, Landroid/view/ISurfaceControlViewHost$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    nop

    .line 146
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :goto_51
    return v1

    :pswitch_data_52
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3e
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
