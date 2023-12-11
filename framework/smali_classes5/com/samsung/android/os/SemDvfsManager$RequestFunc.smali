.class interface abstract Lcom/samsung/android/os/SemDvfsManager$RequestFunc;
.super Ljava/lang/Object;
.source "SemDvfsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemDvfsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "RequestFunc"
.end annotation


# virtual methods
.method public abstract acquire(IILjava/lang/String;I[I)V
.end method

.method public abstract checkHintExist(I)Z
.end method

.method public abstract checkResourceExist(I)Z
.end method

.method public abstract checkSysfsIdExist(I)Z
.end method

.method public abstract getSupportedFrequency(II)[I
.end method

.method public abstract release(II)V
.end method

.method public abstract sysfsRead(I)Ljava/lang/String;
.end method

.method public abstract sysfsWrite(ILjava/lang/String;)V
.end method
