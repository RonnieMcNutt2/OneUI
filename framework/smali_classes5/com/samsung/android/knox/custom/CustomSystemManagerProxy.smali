.class public Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;
.super Ljava/lang/Object;
.source "CustomSystemManagerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSystemManagerProxy"

.field private static mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;
    .registers 1

    .line 47
    sget-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    .line 50
    :cond_b
    sget-object v0, Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;->mProxy:Lcom/samsung/android/knox/custom/CustomSystemManagerProxy;

    return-object v0
.end method


# virtual methods
.method public getExtendedCallInfoState()Z
    .registers 4

    .line 60
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 61
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 62
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->getExtendedCallInfoState()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 66
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_14

    .line 64
    :catch_c
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomSystemManagerProxy"

    const-string v2, "PXY-getExtendedCallInfoState returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const/4 v0, 0x1

    return v0
.end method
