.class public Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
.super Ljava/lang/Object;
.source "DeviceIDProvisionManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public provision()V
    .registers 1

    .line 14
    return-void
.end method
