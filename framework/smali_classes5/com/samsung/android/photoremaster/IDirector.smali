.class public interface abstract Lcom/samsung/android/photoremaster/IDirector;
.super Ljava/lang/Object;
.source "IDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract deinit()V
.end method

.method public abstract getBitmapParam(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getFocusRoi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIntParam(I)I
.end method

.method public abstract getLongParam(I)J
.end method

.method public abstract getStringParam(I)Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract processImage(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setBitmapParam(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setLongParam(IJ)V
.end method

.method public abstract setProgressUpdateListener(Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;)V
.end method

.method public abstract setStringParam(ILjava/lang/String;)V
.end method

.method public abstract setUriParam(ILandroid/net/Uri;)V
.end method

.method public abstract stop()V
.end method

.method public abstract tryInit(Landroid/content/Context;)Z
.end method
