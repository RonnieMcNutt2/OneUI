.class public interface abstract Landroid/view/contentcapture/DataShareWriteAdapter;
.super Ljava/lang/Object;
.source "DataShareWriteAdapter.java"


# virtual methods
.method public onError(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 48
    return-void
.end method

.method public abstract onRejected()V
.end method

.method public abstract onWrite(Landroid/os/ParcelFileDescriptor;)V
.end method
