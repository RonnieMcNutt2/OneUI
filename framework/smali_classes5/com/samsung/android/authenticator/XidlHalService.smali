.class interface abstract Lcom/samsung/android/authenticator/XidlHalService;
.super Ljava/lang/Object;
.source "XidlHalService.java"


# direct methods
.method public static makeHalService()Lcom/samsung/android/authenticator/XidlHalService;
    .registers 2

    .line 44
    new-instance v0, Lcom/samsung/android/authenticator/AidlHalService;

    invoke-direct {v0}, Lcom/samsung/android/authenticator/AidlHalService;-><init>()V

    .line 45
    .local v0, "aidlHalService":Lcom/samsung/android/authenticator/AidlHalService;
    invoke-virtual {v0}, Lcom/samsung/android/authenticator/AidlHalService;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 46
    return-object v0

    .line 48
    :cond_c
    new-instance v1, Lcom/samsung/android/authenticator/HidlHalService;

    invoke-direct {v1}, Lcom/samsung/android/authenticator/HidlHalService;-><init>()V

    return-object v1
.end method


# virtual methods
.method public abstract execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;[B)[B
.end method

.method public abstract execute(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;[B)[B
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract load(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;Landroid/os/ParcelFileDescriptor;JJ)Z
.end method

.method public abstract unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;)Z
.end method

.method public abstract unload(Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;)Z
.end method
