.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$ApplicationPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationPolicy"
.end annotation


# static fields
.field public static final APPLICATION_INSTALL_UNINSTALL_LIST_AS_USER:Ljava/lang/String; = "getApplicationInstallUninstallListAsUser"

.field public static final APPLICATION_SET_TO_DEFAULT:Ljava/lang/String; = "isApplicationSetToDefault"

.field public static final APPLICATION_STATE_ENABLED:Ljava/lang/String; = "getApplicationStateEnabled"

.field public static final DISABLED_CLIPBOARD_BLACKLIST:Ljava/lang/String; = "getPackagesFromDisableClipboardBlackList"

.field public static final DISABLED_CLIPBOARD_BLACKLIST_PERUID:Ljava/lang/String; = "getPackagesFromDisableClipboardBlackListPerUidInternal"

.field public static final DISABLED_CLIPBOARD_WHITELIST:Ljava/lang/String; = "getPackagesFromDisableClipboardWhiteList"

.field public static final DISABLED_CLIPBOARD_WHITELIST_PERUID:Ljava/lang/String; = "getPackagesFromDisableClipboardWhiteListPerUidInternal"

.field public static final KEY_GET_CLIPBOARD_BLACKLIST_PERUID:Ljava/lang/String; = "clipboard_blacklist_perUid"

.field public static final KEY_GET_CLIPBOARD_WHITELIST_PERUID:Ljava/lang/String; = "clipboard_whitelist_perUid"

.field public static final NAME:Ljava/lang/String; = "ApplicationPolicy"

.field public static final UNINSTALLATION_ALLOWED:Ljava/lang/String; = "getApplicationUninstallationEnabled"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ApplicationPolicy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
