.class final Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;
.super Landroid/hardware/input/IPointerIconChangedListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerIconChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 1902
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IPointerIconChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 1905
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$monPointerIconChanged(Landroid/hardware/input/InputManagerGlobal;ILandroid/view/PointerIcon;)V

    .line 1906
    return-void
.end method
