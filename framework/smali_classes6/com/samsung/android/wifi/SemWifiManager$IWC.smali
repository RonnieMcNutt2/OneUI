.class public Lcom/samsung/android/wifi/SemWifiManager$IWC;
.super Ljava/lang/Object;
.source "SemWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IWC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiManager$IWC$IwcSettingType;
    }
.end annotation


# static fields
.field public static final BNR_ENABLE_SWITCH_TO_MOBILE_AFTER_RESTORE:I = 0x4

.field public static final BNR_RESTORE_LEARNING_FIELD:I = 0x3

.field public static final BNR_SKIP_BACKUP_VALUE:I = 0x5

.field public static final BNR_SWITCH_TO_MOBILE:I = 0x1

.field public static final BNR_SWITCH_TO_MOBILE_AGG:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
