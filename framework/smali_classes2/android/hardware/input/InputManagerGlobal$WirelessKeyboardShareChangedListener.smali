.class final Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;
.super Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WirelessKeyboardShareChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 2174
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "index"    # I
    .param p4, "contents"    # Ljava/lang/String;

    .line 2177
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$monWirelessKeyboardShareChanged(Landroid/hardware/input/InputManagerGlobal;JILjava/lang/String;)V

    .line 2178
    return-void
.end method
