.class public interface abstract Landroid/service/voice/VisualQueryDetector$Callback;
.super Ljava/lang/Object;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
.end method

.method public abstract onQueryDetected(Ljava/lang/String;)V
.end method

.method public abstract onQueryFinished()V
.end method

.method public abstract onQueryRejected()V
.end method

.method public abstract onUnknownFailure(Ljava/lang/String;)V
.end method

.method public abstract onVisualQueryDetectionServiceInitialized(I)V
.end method

.method public abstract onVisualQueryDetectionServiceRestarted()V
.end method
