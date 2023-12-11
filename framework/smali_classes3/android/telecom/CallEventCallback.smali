.class public interface abstract Landroid/telecom/CallEventCallback;
.super Ljava/lang/Object;
.source "CallEventCallback.java"


# virtual methods
.method public abstract onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
.end method

.method public abstract onCallStreamingFailed(I)V
.end method

.method public abstract onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onMuteStateChanged(Z)V
.end method
