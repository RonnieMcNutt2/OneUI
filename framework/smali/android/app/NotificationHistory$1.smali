.class Landroid/app/NotificationHistory$1;
.super Ljava/lang/Object;
.source "NotificationHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NotificationHistory;->removeImageNotificationsFromWrite(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationHistory;

.field final synthetic val$hn:Landroid/app/NotificationHistory$HistoricalNotification;


# direct methods
.method constructor <init>(Landroid/app/NotificationHistory;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/NotificationHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Landroid/app/NotificationHistory$1;->this$0:Landroid/app/NotificationHistory;

    iput-object p2, p0, Landroid/app/NotificationHistory$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 436
    invoke-static {}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->getInstance()Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/app/NotificationHistory$1;->val$hn:Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v1}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->deleteRows(Ljava/lang/String;)Z

    .line 437
    return-void
.end method
