.class public interface abstract Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DisplayStateListener"
.end annotation


# static fields
.field public static final TYPE_DEFAULT_DISPLAY:I = 0x1

.field public static final TYPE_EXTRA_BUILT_IN_DISPLAY:I = 0x2

.field public static final TYPE_OTHER_DISPLAY:I = -0x1


# virtual methods
.method public onFinish(III)V
    .registers 4
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 990
    return-void
.end method

.method public onStart(III)V
    .registers 4
    .param p1, "stateLogical"    # I
    .param p2, "statePhysical"    # I
    .param p3, "displayType"    # I

    .line 986
    return-void
.end method
