.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$KioskMode;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KioskMode"
.end annotation


# static fields
.field public static final KIOSK_HOME_PACKAGE:Ljava/lang/String; = "getKioskHomePackage"

.field public static final KIOSK_MODE_ENABLED:Ljava/lang/String; = "isKioskModeEnabled"

.field public static final NAME:Ljava/lang/String; = "KioskMode"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KioskMode"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
