.class final Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;
.super Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;
.source "DeviceStateManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceStateManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;)V
    .registers 2

    .line 385
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManagerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;-><init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 388
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 389
    return-void
.end method

.method public onRequestActive(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 393
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleRequestActive(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V

    .line 394
    return-void
.end method

.method public onRequestCanceled(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 398
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateManagerCallback;->this$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->-$$Nest$mhandleRequestCanceled(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Landroid/os/IBinder;)V

    .line 399
    return-void
.end method
