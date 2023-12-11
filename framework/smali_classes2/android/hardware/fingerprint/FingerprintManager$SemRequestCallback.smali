.class public abstract Landroid/hardware/fingerprint/FingerprintManager$SemRequestCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SemRequestCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequested(I)V
    .registers 2
    .param p1, "msgId"    # I

    .line 635
    return-void
.end method
