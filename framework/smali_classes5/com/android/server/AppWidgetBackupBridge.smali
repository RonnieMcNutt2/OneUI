.class public Lcom/android/server/AppWidgetBackupBridge;
.super Ljava/lang/Object;
.source "AppWidgetBackupBridge.java"


# static fields
.field private static sAppWidgetService:Lcom/android/server/WidgetBackupProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWidgetParticipants(I)Ljava/util/List;
    .registers 2
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_9

    .line 38
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 39
    :cond_9
    const/4 v0, 0x0

    .line 37
    :goto_a
    return-object v0
.end method

.method public static getWidgetState(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 45
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_9

    .line 46
    invoke-interface {v0, p0, p1}, Lcom/android/server/WidgetBackupProvider;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    goto :goto_a

    .line 47
    :cond_9
    const/4 v0, 0x0

    .line 45
    :goto_a
    return-object v0
.end method

.method public static register(Lcom/android/server/WidgetBackupProvider;)V
    .registers 1
    .param p0, "instance"    # Lcom/android/server/WidgetBackupProvider;

    .line 33
    sput-object p0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    .line 34
    return-void
.end method

.method public static restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restoredState"    # [B
    .param p2, "userId"    # I

    .line 57
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/WidgetBackupProvider;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 60
    :cond_7
    return-void
.end method

.method public static systemRestoreFinished(I)V
    .registers 2
    .param p0, "userId"    # I

    .line 63
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    .line 64
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->systemRestoreFinished(I)V

    .line 66
    :cond_7
    return-void
.end method

.method public static systemRestoreStarting(I)V
    .registers 2
    .param p0, "userId"    # I

    .line 51
    sget-object v0, Lcom/android/server/AppWidgetBackupBridge;->sAppWidgetService:Lcom/android/server/WidgetBackupProvider;

    if-eqz v0, :cond_7

    .line 52
    invoke-interface {v0, p0}, Lcom/android/server/WidgetBackupProvider;->systemRestoreStarting(I)V

    .line 54
    :cond_7
    return-void
.end method
