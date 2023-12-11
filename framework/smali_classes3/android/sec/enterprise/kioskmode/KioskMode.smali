.class public Landroid/sec/enterprise/kioskmode/KioskMode;
.super Ljava/lang/Object;
.source "KioskMode.java"


# static fields
.field public static CONTROL_PANEL_PKGNAME:Ljava/lang/String; = null

.field public static MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "KioskMode"

.field public static TASK_MANAGER_PKGNAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-string v0, "com.sec.android.app.controlpanel"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    .line 57
    const-string v0, "com.sec.android.app.taskmanager"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    .line 60
    const-string v0, "com.sec.minimode.taskcloser"

    sput-object v0, Landroid/sec/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTaskManagerAllowed(Z)Z
    .registers 5
    .param p1, "showMsg"    # Z

    .line 69
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 70
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_f

    .line 71
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    .line 75
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_f
    goto :goto_18

    .line 73
    :catch_10
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KioskMode"

    const-string v2, "PXY-isTaskManagerAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    const/4 v0, 0x1

    return v0
.end method
