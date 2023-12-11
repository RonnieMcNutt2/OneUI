.class final Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;
.super Landroid/hardware/input/IMultiFingerGestureListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiFingerGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 659
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IMultiFingerGestureListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onMultiFingerGesture(II)V
    .registers 4
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 662
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$monMultiFingerGesture(Landroid/hardware/input/InputManagerGlobal;II)V

    .line 663
    return-void
.end method
