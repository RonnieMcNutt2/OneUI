.class public abstract Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IOutputSurfaceConfiguration.java"

# interfaces
.implements Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getImageAnalysisOutputSurface:I = 0x3

.field static final TRANSACTION_getImageCaptureOutputSurface:I = 0x2

.field static final TRANSACTION_getPostviewOutputSurface:I = 0x4

.field static final TRANSACTION_getPreviewOutputSurface:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 62
    packed-switch p0, :pswitch_data_12

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 78
    :pswitch_5
    const-string v0, "getPostviewOutputSurface"

    return-object v0

    .line 74
    :pswitch_8
    const-string v0, "getImageAnalysisOutputSurface"

    return-object v0

    .line 70
    :pswitch_b
    const-string v0, "getImageCaptureOutputSurface"

    return-object v0

    .line 66
    :pswitch_e
    const-string v0, "getPreviewOutputSurface"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 233
    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 89
    invoke-static {p1}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 93
    const-string v0, "android.hardware.camera2.extension.IOutputSurfaceConfiguration"

    .line 94
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    :cond_d
    packed-switch p1, :pswitch_data_4a

    .line 105
    packed-switch p1, :pswitch_data_50

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 101
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 130
    :pswitch_1c
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getPostviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v2

    .line 131
    .local v2, "_result":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 133
    goto :goto_48

    .line 123
    .end local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getImageAnalysisOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v2

    .line 124
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    goto :goto_48

    .line 116
    .end local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    :pswitch_32
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getImageCaptureOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v2

    .line 117
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 119
    goto :goto_48

    .line 109
    .end local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    :pswitch_3d
    invoke-virtual {p0}, Landroid/hardware/camera2/extension/IOutputSurfaceConfiguration$Stub;->getPreviewOutputSurface()Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v2

    .line 110
    .restart local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 112
    nop

    .line 140
    .end local v2    # "_result":Landroid/hardware/camera2/extension/OutputSurface;
    :goto_48
    return v1

    nop

    :pswitch_data_4a
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method
