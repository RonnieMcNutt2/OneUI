.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
.super Landroid/hardware/camera2/ICameraInjectionCallback$Stub;
.source "CameraInjectionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraInjectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    .line 207
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 211
    return-object p0
.end method

.method public onInjectionError(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 216
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->onInjectionError(I)V

    .line 217
    return-void
.end method
