.class public Lcom/android/server/backup/PreferredActivityBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "PreferredActivityBackupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/PreferredActivityBackupHelper$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYS:[Ljava/lang/String;

.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final KEY_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final KEY_INTENT_VERIFICATION:Ljava/lang/String; = "intent-verification"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_PREFERRED:Ljava/lang/String; = "preferred-activity"

.field private static final STATE_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PreferredBackup"


# instance fields
.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 53
    const-string/jumbo v0, "intent-verification"

    const-string v1, "domain-verification"

    const-string/jumbo v2, "preferred-activity"

    const-string v3, "default-apps"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 73
    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/backup/PreferredActivityBackupHelper;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 74
    iput p1, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    .line 75
    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 105
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 110
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_d
    goto :goto_38

    :sswitch_e
    const-string/jumbo v2, "preferred-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_39

    :sswitch_19
    const-string/jumbo v2, "intent-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_39

    :sswitch_24
    const-string v2, "domain-verification"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    goto :goto_39

    :sswitch_2e
    const-string v2, "default-apps"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_39

    :goto_38
    const/4 v2, -0x1

    :goto_39
    packed-switch v2, :pswitch_data_92

    .line 124
    goto :goto_50

    .line 121
    :pswitch_3d
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDomainVerification([BI)V

    .line 122
    goto :goto_66

    .line 119
    :pswitch_43
    goto :goto_66

    .line 115
    :pswitch_44
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restoreDefaultApps([BI)V

    .line 116
    goto :goto_66

    .line 112
    :pswitch_4a
    iget v2, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, p2, v2}, Landroid/content/pm/IPackageManager;->restorePreferredActivities([BI)V

    .line 113
    goto :goto_66

    .line 124
    :goto_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected restore key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_66} :catch_67

    .line 128
    :goto_66
    goto :goto_7e

    .line 126
    :catch_67
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to restore key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7e
    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x298b2982 -> :sswitch_2e
        -0x20befb7c -> :sswitch_24
        -0x19949e54 -> :sswitch_19
        0x4fa3eadb -> :sswitch_e
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_44
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .line 79
    const-string v0, "PreferredBackup"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 84
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_84

    :cond_e
    goto :goto_39

    :sswitch_f
    const-string/jumbo v3, "preferred-activity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    goto :goto_3a

    :sswitch_1a
    const-string/jumbo v3, "intent-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v3, "domain-verification"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x3

    goto :goto_3a

    :sswitch_2f
    const-string v3, "default-apps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_3a

    :goto_39
    const/4 v3, -0x1

    :goto_3a
    packed-switch v3, :pswitch_data_96

    .line 95
    goto :goto_54

    .line 93
    :pswitch_3e
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDomainVerificationBackup(I)[B

    move-result-object v0

    return-object v0

    .line 91
    :pswitch_45
    return-object v2

    .line 88
    :pswitch_46
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getDefaultAppsBackup(I)[B

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_4d
    iget v3, p0, Lcom/android/server/backup/PreferredActivityBackupHelper;->mUserId:I

    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getPreferredActivityBackup(I)[B

    move-result-object v0

    return-object v0

    .line 95
    :goto_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected backup key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6a} :catch_6b

    .line 99
    goto :goto_82

    .line 97
    :catch_6b
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to store payload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_82
    return-object v2

    nop

    :sswitch_data_84
    .sparse-switch
        -0x298b2982 -> :sswitch_2f
        -0x20befb7c -> :sswitch_25
        -0x19949e54 -> :sswitch_1a
        0x4fa3eadb -> :sswitch_f
    .end sparse-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_46
        :pswitch_45
        :pswitch_3e
    .end packed-switch
.end method
