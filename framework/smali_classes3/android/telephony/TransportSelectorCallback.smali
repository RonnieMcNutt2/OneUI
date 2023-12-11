.class public interface abstract Landroid/telephony/TransportSelectorCallback;
.super Ljava/lang/Object;
.source "TransportSelectorCallback.java"


# virtual methods
.method public abstract onCreated(Landroid/telephony/DomainSelector;)V
.end method

.method public abstract onSelectionTerminated(I)V
.end method

.method public abstract onWlanSelected(Z)V
.end method

.method public abstract onWwanSelected()Landroid/telephony/WwanSelectorCallback;
.end method

.method public abstract onWwanSelected(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/WwanSelectorCallback;",
            ">;)V"
        }
    .end annotation
.end method
