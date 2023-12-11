.class final Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPointerIconChangedListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1913
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1914
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 1915
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1919
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2f

    .line 1921
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1922
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/PointerIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/PointerIcon;

    goto :goto_15

    :cond_14
    move-object v1, v2

    .line 1923
    .local v1, "icon":Landroid/view/PointerIcon;
    :goto_15
    if-nez v1, :cond_1e

    .line 1924
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4, v4}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    goto :goto_2f

    .line 1926
    :cond_1e
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getHotSpotX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getHotSpotY()F

    move-result v5

    invoke-interface {v2, v0, v3, v4, v5}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    .line 1930
    .end local v0    # "type":I
    .end local v1    # "icon":Landroid/view/PointerIcon;
    :goto_2f
    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
