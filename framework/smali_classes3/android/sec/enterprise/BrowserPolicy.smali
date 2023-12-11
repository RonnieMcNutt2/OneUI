.class public Landroid/sec/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .registers 4

    .line 80
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 81
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 82
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    return v1

    .line 86
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_c
    goto :goto_15

    .line 84
    :catch_d
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAutoFillSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public getCookiesSetting()Z
    .registers 4

    .line 63
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 64
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_c

    .line 65
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    return v1

    .line 69
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_c
    goto :goto_15

    .line 67
    :catch_d
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getCookiesSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public getJavaScriptSetting()Z
    .registers 4

    .line 97
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 98
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_d

    .line 99
    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    return v1

    .line 103
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_d
    goto :goto_16

    .line 101
    :catch_e
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getJavaScriptSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public getPopupsSetting()Z
    .registers 5

    .line 114
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 115
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_c

    .line 116
    invoke-interface {v1, v0}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    return v0

    .line 120
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_c
    goto :goto_15

    .line 118
    :catch_d
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getPopupsSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_15
    return v0
.end method
