.class final Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;
.super Landroid/hardware/input/IInputDevicesChangedListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 286
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onInputDevicesChanged([I)V
    .registers 3
    .param p1, "deviceIdAndGeneration"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0, p1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManagerGlobal;[I)V

    .line 290
    return-void
.end method
