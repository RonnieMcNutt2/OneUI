.class public interface abstract Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;
.super Ljava/lang/Object;
.source "DreamManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DreamManagerStateListener"
.end annotation


# virtual methods
.method public onDreamingStarted()V
    .registers 1

    .line 94
    return-void
.end method

.method public onDreamingStopped()V
    .registers 1

    .line 100
    return-void
.end method

.method public onKeepDreamingWhenUnpluggingChanged(Z)V
    .registers 2
    .param p1, "keepDreaming"    # Z

    .line 88
    return-void
.end method
