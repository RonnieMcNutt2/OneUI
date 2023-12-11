.class public abstract Landroid/media/projection/MediaProjection$Callback;
.super Ljava/lang/Object;
.source "MediaProjection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/MediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedContentResize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 355
    return-void
.end method

.method public onCapturedContentVisibilityChanged(Z)V
    .registers 2
    .param p1, "isVisible"    # Z

    .line 383
    return-void
.end method

.method public onStop()V
    .registers 1

    .line 321
    return-void
.end method
