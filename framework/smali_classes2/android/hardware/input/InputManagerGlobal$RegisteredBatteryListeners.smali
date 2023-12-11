.class final Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisteredBatteryListeners"
.end annotation


# instance fields
.field final mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>()V

    return-void
.end method
